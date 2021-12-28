### Word frequency

To filter from some source text a list of learnable words, two lists are required: one for the learned and one the useless. The latter could contains words like proper names, abbreviations, and slangs.

The aim of this is to maintain a list of all English words that I already have a clear idea of and those that I feel no need to acquire further knowledge of.


Note: usage of the `comm` command

```bash
sort -u file1
sort -u file2

#find lines only in file1
comm -23 file1 file2 

#find lines only in file2
comm -13 file1 file2 

#find lines common to both files
comm -12 file1 file2 
```
