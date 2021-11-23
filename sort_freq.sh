#/usr/bin/zsh

if [ ! -f tmp_freq ]; then
    while read w; do
        grep -E "\b$w\b" unigram_freq.csv -n | tr ':' ' ' >> tmp_freq
    done < $1
    sort -k1 -n tmp_freq
    rm tmp_freq
else
    echo "Rename tmp_freq."
fi
