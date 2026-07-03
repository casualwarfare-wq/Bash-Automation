#!/bin/bash
trap "rm -f folder; exit" 2
echo "This is a test script."
x=0
while ((x<10));
do
    sleep 10
    echo "This is a test script."
    ((x++))
done











