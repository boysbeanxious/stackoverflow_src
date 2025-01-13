#!/bin/bash

echo "HelloWorld"

loop_num=1
std_year=$1   
lang="java"
src_path="/usr/share/d_ollama/data/src/"$std_year"_"$lang"_src"
excel_path="/usr/share/d_ollama/data/src/"$std_year"_"$lang"_excel/"

echo $std_year
echo $src_path
cd $src_path


tot_file_num=`ls -al | grep *.java | wc -l`
echo "tot_file_num : "$tot_file_num 

for file in ./*.java
do
	if [ -f $file ]
        then
                echo "$file is a file"
		
		dir_path=$(dirname $file)/
        	name=$(basename $file)
        	ex=".csv"
        	new_nm="${name%.*}"

        	new_file_path="$excel_path/$new_nm$ex"

        	#echo $excel_path

        	#complexipy `echo $file` -l file -o
        	java -jar /home/mghan/sopjt/git/stackoverflow_src/lib/complexity/CognitiveComplexityCalculator-1.0.jar `echo $file` `echo $new_file_path`


        	loop_num=$[$loop_num+1]
        	left_file_num=$[$tot_file_num-$loop_num]


        	echo "============================================="
        	echo "saved file : "$new_file_path
        	echo "total file number : "$tot_file_num
        	echo "left file number : "$left_file_num
        	echo "============================================="

	fi
done	
