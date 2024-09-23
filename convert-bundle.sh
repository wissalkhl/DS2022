#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

tsv_file=$(find . -name "*.tsv")

awk '!/^[[:space:]]*$/' "$tsv_file" | sed 's/'$'\t''/,/g' file.tsv > file.csv > converted_file.csv

line_count=$(tail -n +2 converted_file.csv | wc -l)

echo "Number of data lines: $line_count"

ar -czf converted-archive.tar.gz converted_file.csv

rm lab3-bundle.tar.gz "$tsv_file"


