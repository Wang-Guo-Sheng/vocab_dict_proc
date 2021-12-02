#!/usr/bin/bash

pdf2txt.py "${1}" | \
awk -F'-$' '{ printf "%s", sep $1; sep=/-$/?"":OFS } END{ print "" }' | \
sed 's/[^[:alpha:]\t]/ /g' | \
tr A-Z a-z | \
sed 's/\s+/ /g' | \
sed 's/ /\n/g' | \
sort | uniq
