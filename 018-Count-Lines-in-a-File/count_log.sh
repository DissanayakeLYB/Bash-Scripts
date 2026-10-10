#!/bin/bash

file=$1

echo "File: $file"
echo "Lines: $(wc -l < "$file")"
