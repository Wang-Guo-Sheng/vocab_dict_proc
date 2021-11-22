#!/usr/bin/bash

pdf2txt.py "${1}" | \
sed 's/[^[:alpha:]\t]/ /g' | \
tr A-Z a-z | \
sed 's/\s+/ /g' | \
sed 's/ /\n/g' | \
sort | uniq
