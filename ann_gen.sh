#!/bin/bash

infile_str=./S
outfile_str=ann
infile=$infile_str
outfile=$outfile_str
edf=.edf
txt=.txt
echo $infile

shopt -s nullglob
for dir in ~/SeniorProject/EEG_Dataset/*/
do
	cd $dir
	num=${dir: -4}
	num=${num:: -1}
	# echo $num

	infile=$infile_str$num
	echo $infile
	# for X in 03 08 11
	# do
	# 	infile=$infile$X$edf
	# 	outfile=$outfile$X$txt
	# 	echo $infile
	# 	echo $outfile

	# 	rdedfann -r $infile > $outfile

	# 	infile=$infile_str
	# 	outfile=$outfile_str
	# done
    # for file in "$dir"/*
    # do
    #     if [[ -f $file ]]
    #     then
    #         do_something_with "$file"
    #     fi
    # done
done
