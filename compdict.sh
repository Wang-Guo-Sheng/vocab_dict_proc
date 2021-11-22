#!/usr/bin/bash
awk 'NR==FNR { lines[$0]=1; next } $0 in lines' "${1}" "${2}"
