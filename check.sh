#! /bin/bash

result=$(cat input | python main.py |diff -y -W 150 output -)

if [ $? -eq 0 ]
then
        echo "Files are same!"
else
        echo "Files are different"
        echo "$result"
fi