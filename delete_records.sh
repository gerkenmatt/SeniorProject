shopt -s nullglob
for dir in ~/SeniorProject/EEG_Dataset/*/
do
	cd $dir
	yes | rm *01.edf*
	yes | rm *02.edf*
	yes | rm *04.edf*
	yes | rm *05.edf*
	yes | rm *06.edf*
	yes | rm *08.edf*
	yes | rm *09.edf*
	yes | rm *10.edf*
	yes | rm *12.edf*
	yes | rm *13.edf*
	yes | rm *14.edf*
	cd ..
done