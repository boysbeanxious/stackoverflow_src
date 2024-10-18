#!/bin/bash

echo "HelloWorld"

for file in ../../data/src/*.py
do
	dir_path=$(dirname $file)/
	name=$(basename $file)
	ex=".csv"
	old_nm="complexipy"
	new_nm="${name%.*}"

	new_file="./$new_nm$ex"
	old_file="./$old_nm$ex"
	echo $new_file
	echo $old_file
	
	complexipy `echo $file` -l file -o
	mv `echo $old_file` `echo $new_file`
	cp `echo $new_file` `echo $dir_path`
	\rm `echo $new_file`
done	
