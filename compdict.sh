#!/usr/bin/bash
awk 'NR==FNR { lines[zsh]=1; next } zsh in lines' $1 $2
