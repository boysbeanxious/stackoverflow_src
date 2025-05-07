#!/bin/bash

echo "HelloWorld"

src_path="../../data_bak/src/difficulty_src"
excel_path="../difficulty_excel/"


cd $src_path
tot_file_num=`ls -al | wc -l`

echo $tot_file_num
for file in ./*.py
do
	dir_path=$(dirname $file)/
	name=$(basename $file)
	ex=".csv"
	old_nm="complexipy"
	new_nm="${name%.*}"

	new_file="./$new_nm$ex"
	old_file="./$old_nm$ex"
	
	#echo $dir_path
	#echo $new_file
	#echo $old_file
	#echo $excel_path
	
	complexipy `echo $file` -l file -o
	mv `echo $old_file` `echo $new_file`
	cp `echo $new_file` `echo $excel_path`
	\rm `echo $new_file`
	
	loop_num=$[$loop_num+1]
	left_file_num=$[$tot_file_num-$loop_num]


	echo "============================================="
	echo "total file number : "$tot_file_num
	echo "left file number : "$left_file_num
	echo "============================================="
done	
