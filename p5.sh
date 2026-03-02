#!/bin/bash
count_files( ){
local.dir=$1
local.count=0
for item in "$dir"/*
do
[ -e "$item" ] || continue
if [ -f "$item" ] 
then 
  count=$((count+1))
elif [ -d "$item" ] 
then
  sub_count=$(count_files "$item")
  count=$((count+sub_count))
fi
done
echo $count
}
echo "Enter directory path"
read directory
if [ -d "$directory" ] 
then
  total = $((count_files "$directory"))
  echo "Total files in $directory and its sub-directory is $total"
else
  echo "\nInvalid path"
fi
