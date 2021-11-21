#!/usr/bin/bash
# Usage: ./dict_filter.sh dict.txt dict_learned.txt dict_unknown.txt
for w in $(cat $1); do
	echo
	echo ${w}
	read -p 'Do you know this word? (y/n, or 1/0, or 1/3)' yn
	case $yn in
		[Yy1]* ) echo $w >> $2;;
		[Nn30]* ) echo $2 >> $3;;
		* ) echo "Please answer yes or no.";;
	esac
done

