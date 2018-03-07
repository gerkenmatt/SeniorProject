#!/bin/bash

start=./S
record=R
outfile_str=ann
infile=$start
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

	sample=$start$num
	echo $sample

	for X in 03 07 11
	do
		infile=$sample$record$X$edf
		outfile=$outfile_str$X$txt
		echo $infile
		echo $outfile

		rdedfann -r $infile > $outfile

	done

done
