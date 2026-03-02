#! bin/bash
mkdir dir1
touch dir1/sample.txt
echo "Hello">>dir1/sample.txt
mkdir dir2
cp dir1/sample.txt dir2
