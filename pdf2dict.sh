#!/usr/bin/bash

ftxt=$(pdf2txt.py "${1}" || pandoc ${1})
echo ${ftxt} | \
awk -F'-$' '{ printf "%s", sep $1; sep=/-$/?"":OFS } END{ print "" }' | \
sed 's/[^[:alpha:]\t]/ /g' | \
tr A-Z a-z | \
sed 's/\s+/ /g' | \
sed 's/ /\n/g' | \
sort | uniq
