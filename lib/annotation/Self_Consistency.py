from lib.annotation.import_files import *
# https://github.com/meta-llama/llama-recipes/blob/main/recipes/quickstart/Prompt_Engineering_with_Llama_3.ipynb
class Self_Consistency:
    def __init__(self, llm_model, few_shot_n, test_n, q_src_yn, ver, p_ver, sf_num, temperature):  
        self.ollama         = 'llama-3.1-70b-instruct-lorablated.Q4_K_M:latest'
        self.chatgpt        = OpenAI(api_key= conf.OEPN_AI_KEY)

        self.df             = pd.DataFrame()
        # self.fewshot_q_id   = []
        self.eval_q_id      = []
        self.eval_prompt    = []
        self.result         = []
        self.message_list   = []
        self.eval_q_list    = []

        # param
        self.test_n         = test_n
        self.sys_prompt     = prompt[p_ver] 
        self.p_ver          = p_ver
        self.version        = str(ver)
        self.sf_num         = sf_num
        self.temperature    = temperature
        
        self.write_promt(few_shot_n, q_src_yn, test_n)
        self.calc_acc(llm_model, few_shot_n, q_src_yn)

    def random_selection(self, few_shot_n, q_src_yn, test_n):
        if q_src_yn == "Y":
            self.df = pd.read_csv('../../data/q_output_code_y_241201.csv', index_col = 0)
        else :
            self.df = pd.read_csv('../../data/q_output_241201.csv', index_col = 0)

        diff_dict = {'Difficulty Level : Basic':        '<Difficulty Level>0</Difficulty Level>' ,
                    'Difficulty Level : Intermediate':  '<Difficulty Level>1</Difficulty Level>', 
                    'Difficulty Level : Advanced':      '<Difficulty Level>2</Difficulty Level>'}
        self.df['answer_encode'] = self.df['answer'].apply(lambda x : diff_dict[x])
        
        # to evaluate self-consistency, pick eval target first
        self.eval_q_id      = np.random.choice(list(self.df.index), size=test_n, replace=False)

        # and set the few shot example target
        diff_idx = {x : np.setdiff1d(list(self.df[self.df['answer']==x].index), self.eval_q_id) for x in list(diff_dict.keys())}

        diff_s_idx = {}
        for l in range(test_n):
            sc_q_list = []
            for sf in range(self.sf_num):
                tmp = []
                for key, value in diff_idx.items():
                    diff_population = value
                    tmp.append(np.random.choice(diff_population, size=few_shot_n, replace=False))
                sc_q_list.append(np.concatenate(tmp))
            diff_s_idx[self.eval_q_id[l]] = sc_q_list
        return diff_s_idx
            

    def write_promt(self, few_shot_n, q_src_yn, test_n) : 
        e_f_dict = self.random_selection(few_shot_n, q_src_yn, test_n)
        # {eval_q_id : [[fewshot1, ..., fewshotn],[fewshot1, ..., fewshotn]], ...} 
        dict_for_p = {}
        for e_idx, f_idx_list in e_f_dict.items():
            examples = []
            for f_idxs in f_idx_list :
                example = []
                for f_idx in f_idxs :
                    # temp_dict = {"question" : 'q',
                    #             "answer"   : 'a'}
                    temp_dict = {"question" : str(self.df.loc[f_idx, 'question']),
                                "answer"   : str(self.df.loc[f_idx, 'answer_encode'])}
                    example.append(temp_dict)
                examples.append(example)
            dict_for_p[e_idx] = examples

        # write system prompt & examples
        for eval_id, few_list in dict_for_p.items() : 
            for few_sf_list in few_list : 
                message = []
                message.append({"role": "system", "content": self.sys_prompt})

                for few_sf in few_sf_list:
                    q_prompt = """\nHere is the examples of question\n"""
                    q_prompt = q_prompt+f"{few_sf['question']}\n"
                    message.append({"role": "user", "content": q_prompt})
                    message.append({"role": "assistant", "content": few_sf['answer']})
                # select the random evaluate question

                self.eval_q_list.append(eval_id)
                
                target_post="""\nHere is the target post. Answer the "Difficulty Level".\n"""
                target_post = target_post+"""\n<target_post>\n"""
                target_post = target_post+self.df.loc[eval_id, 'question']+'\n'
                target_post = target_post+"""</target_post>\n"""
                message.append({"role": "user", "content": target_post})
                self.message_list.append(message)

        # print("self.eval_q_list : ", self.eval_q_list)
        # print("self.message_list :", len(self.message_list))
            # with open("list.json", "w") as file:
            #     json.dump(self.message_list, file)

 
    def calc_acc_for_l(self, llm_model, few_shot_n, q_src_yn):           
        for idx, message in tqdm(enumerate(self.message_list)):
            tmp = []
            response = chat( model      = self.ollama,
                            messages    = message,
                            )
            tmp.append(self.df.loc[self.eval_q_list[idx], 'id'])
            tmp.append(message)
            tmp.append(response['message']['content'])
            self.result.append(tmp)
        result_df = pd.DataFrame(self.result, columns = ['id', 'message', 'result'])
        result_df = pd.merge(self.df, result_df, on = 'id')
        result_df.to_csv(f'./result_241201/sc_{llm_model}_result_{few_shot_n}_{self.test_n}_{q_src_yn}_{self.version}_{self.p_ver}_{self.temperature}.csv')

    def calc_acc_for_c(self, llm_model, few_shot_n, q_src_yn):
        for idx, message in tqdm(enumerate(self.message_list)):
            tmp = []
            MODEL = "gpt-4o"
            response = self.chatgpt.chat.completions.create(
                model=MODEL,
                messages=message,
                temperature= self.temperature,
            )
            tmp.append(self.df.loc[self.eval_q_list[idx], 'id'])
            tmp.append(message)
            tmp.append([response.choices[0].message.content])
            self.result.append(tmp)
        result_df = pd.DataFrame(self.result, columns = ['id', 'message', 'result'])
        result_df = pd.merge(self.df, result_df, on = 'id')
        result_df.to_csv(f'./result_241201/sc_{llm_model}_result_{few_shot_n}_{self.test_n}_{q_src_yn}_{self.version}_{self.p_ver}_{self.temperature}.csv')


    def calc_acc(self, llm_model, few_shot_n, q_src_yn) :
        if llm_model == 'l' : # ollama 
            # print(self.eval_prompt)
            self.calc_acc_for_l(llm_model, few_shot_n, q_src_yn)
            

        elif llm_model == 'c' : # chatgpt 
            # print(self.eval_prompt)
            self.calc_acc_for_c(llm_model, few_shot_n, q_src_yn)
