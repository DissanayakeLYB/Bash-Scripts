#!/bin/bash

user=$(whoami)
home_dir=$HOME;
cur_dir=$(pwd)
date=$(date)
files=$(ls)

echo "User: $user"
echo "Home: $home_dir"
echo "Current directory: $cur_dir"
echo "Date: $date"
echo "Files here: $files"
