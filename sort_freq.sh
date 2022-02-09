#/usr/bin/zsh

if [ ! -f tmp_freq ]; then
	notfound=()
	while read w; do
        if [ ! -z "${w}" ]; then
            newline=$(grep -E "\b$w\b" "`dirname "$0"`/unigram_freq.csv" -n)
        	if [ -z "${newline}" ]; then
        			notfound+=(${w})
        		else
        		echo ${newline} | tr ':' ' ' >> tmp_freq
        	fi
        fi
	done < $1
	sort -k1 -n tmp_freq
	for w in ${notfound[@]}; do
	echo $w
	done
	rm tmp_freq
else
	echo "Please rename tmp_freq and try again."
fi
