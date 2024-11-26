from import_file import *

class CalcDiff:

    def __init__(self):  
            self.llm = OllamaLLM(model="llama-3.1-70b-instruct-lorablated.Q4_K_M:latest") 
            self.parser = StrOutputParser() 
            self.df = pd.read_csv('../../data/part_one_q_output.csv', index_col = 0)

    def get_target_list(self, posttype, st_dt, end_dt):
        print("annotation_update> get_target_list") 
        if posttype == "1" : 
            print("annotation_update> get_target_list> posttype==1") 
            posttype = "'1'"
            q_sql = """select a.id 
                            , to_char(a.creationdate, 'yyyy-mm-dd') as creationdate
                            , a.title
                            , b.body        
                        from posts a 
                            , postsbody b
                            , tt_posts_difficulty c 
                        where a.id = b.id
                            and a.id = c.id
                            and a.posttypeid = {0} 
                            and a.creationdate between '{1}' and '{2}'
                            and a.tags like '%<python>%' 
                        """ 

            conn = psycopg2.connect(host = conf.database_user['host'], dbname=conf.database_user['dbname'], user=conf.database_user['user'], password=conf.database_user['password'])
            try:
                cur = conn.cursor()
                cur.execute(q_sql.format(posttype, st_dt, end_dt))
                rows = cur.fetchall()

            except psycopg2.DatabaseError as db_err:
                print(db_err)
            finally : 
                cur.close()

            q_output = pd.DataFrame(rows, columns = ['id','creationdate', 'title', 'body'])
            return q_output

        else : 
            print("annotation_update> get_id_list> posttype==2") 
            posttype = "'2'"


    def create_fewshot_promt(self):
        # print("annotation_update> eval_p_diff> create_fewshot_promt") 

        diff_list = ['Difficulty class : Basic', 'Difficulty class : Intermediate', 'Difficulty class : Advanced']

        diff_idx = {x : list(self.df[self.df['answer']==x].index) for x in diff_list}
        diff_s_idx = {}
        for key, value in diff_idx.items():
            dic_col = f'{key}_sample_idx'
            diff_population = value
            diff_s_idx[dic_col] = np.random.choice(diff_population, size=3, replace=False)

        fewshot_q_id = list(chain.from_iterable(diff_s_idx.values()))
        examples = []
        for idx in fewshot_q_id:
        # for idx in [19]:
            temp_dict = {"question" : str(self.df.loc[idx, 'question']),
                        "answer"   : str(self.df.loc[idx, 'answer'])}
            examples.append(temp_dict)

        example_prompt = PromptTemplate.from_template(
        "Question:\n{question}\nAnswer:\n{answer}"
        )

        prompt = FewShotPromptTemplate(
        examples=examples,
        example_prompt=example_prompt,
        suffix="Question:\n{question}\nAnswer:",
        input_variables=["question"],
        )
        return prompt

    def pp_data(self, p_id_df): 
        htmlp = pp.HTMLParser()
        codep = pp.CodeSectionParser()
        ts = se.SectionExtractor()

        p_id_df['c_body'] = p_id_df['body'].apply(lambda x : codep(x))
        p_id_df['t_body'] = p_id_df[['c_body', 'body']].apply(lambda row: ts.get_text_section({'body': row['body'], 'code_sections': row['c_body']['code_sections']}), axis=1)
        p_id_df['clean_body'] = p_id_df['t_body'].apply(lambda x : htmlp.get_html_cleaned_str(x))
        p_id_df['question'] = '<Title>'+p_id_df['title'].map(str)+'</Title> <Body>'+p_id_df['clean_body'].map(str)+'</Body>'

        return p_id_df


    def update_result(self, eval_result):
        print("annotation_update> eval_p_diff>eval_result")
        conn = psycopg2.connect(host = conf.database_user['host'], dbname=conf.database_user['dbname'], user=conf.database_user['user'], password=conf.database_user['password'])
        cur = conn.cursor()

        rows = zip(eval_result.id, eval_result.result)
        cur.execute("""CREATE TEMP TABLE tmp_update(id INTEGER, result INTEGER) ON COMMIT DROP""")
        cur.executemany("""INSERT INTO tmp_update (id, result) VALUES(%s, %s)""", rows)

        cur.execute("""
            UPDATE tt_posts_difficulty x
            SET x.difficulty_level = tmp_update.result
            FROM tmp_update
            WHERE tmp_update.id = x.id
            AND x.difficulty_level = -1;
            """)

        cur.rowcount
        conn.commit()
        cur.close()
        conn.close()


    def eval_p_diff(self, pp_id_df):
        print("annotation_update> eval_p_diff") 
        dt_list = list(pp_id_df['creationdate'].unique())
        dt_list.sort()

        for dt in dt_list:
            print("annotation_update> eval_p_diff> dt", dt) 
            eval_result = pd.DataFrame(columns = ['id', 'result'])

            p_id_list = pp_id_df.loc[pp_id_df['creationdate'] ==dt, 'id'].values     
            print("annotation_update> eval_p_diff> dt", dt ) 

            for p_id in tqdm(p_id_list[:5]):
                
                try : 
                    prompt = self.create_fewshot_promt()
                    chain = prompt | self.llm | self.parser

                    question = str(pp_id_df.loc[pp_id_df['id'] == p_id, 'question'].values)
                    # chain 호출
                    print(question)
                    response = chain.invoke({"question": question})
                    tmp_dict = {'id' : p_id
                                ,'result' : response}
                    eval_result = pd.concat([eval_result, pd.DataFrame([tmp_dict])], ignore_index=True)
                except KeyError as e:
                    print(f"key err: {e}")
            # self.update_result(eval_result)
            eval_result.to_csv(f'{dt}.csv')


    def annotation_update(self, st_dt, end_dt, num_p, seed, posttype):
        # sample_insert('2021-11-30', '2023-11-30', 100, 11, '1')
        print("annotation_update> get_target_list") 
        np.random.seed(seed)
        p_id_df = self.get_target_list(posttype, st_dt, end_dt)
        dt_list = list(p_id_df['creationdate'].unique())

        # print("annotation_update > create fewshot prompt")
        # prompt = self.create_fewshot_promt()

        print("annotation_update > preprocessing data")
        pp_id_df = self.pp_data(p_id_df)

        print("annotation_update > eval_p_diff")
        self.eval_p_diff(pp_id_df)


