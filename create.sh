#!/bin/bash
function create(){
	if [[ $1 == '--help' ]]
		then
		echo 'Help message!'
	else
		#get templates and extensions
		#from templatels directory
		template_dir=~/createCommand/templates/

		extensions=$(find $template_dir -type f | sed 's|.*\.||' | sort -u)
		read -a arr <<<$extensions

		#create empty file
		command touch $1

		#loop through avail
		#templates and if there
		#is a match in file extensions
		#append the text into the file
		for var in ${arr[@]}
		do
			if [[ ${1: -${#var}} == $var ]]
				then
				cat ${template_dir}/template.$var > $1;
			fi
		done
	fi
}
