from sample_insert import * 
import CalcDiff as cd
import os 

def main():
     print ("start main!")
     
     # 일자 별로 100개씩 sampling -> db insert
     st_dt = '2021-11-30'
     end_dt = '2023-11-30'
     sample_num = 100
     seed = 100
     posttype = '1'

     print ("start sample_insert!")
     sample_insert(st_dt, end_dt, sample_num, seed, posttype)
     print ("end sample_insert!")

     print ("start annotation_update!")
     cal = cd.CalcDiff()
     cal.annotation_update(st_dt, end_dt, sample_num, seed, posttype)
     print ("end annotation_update!")

    

if __name__ == "__main__":
     main()

