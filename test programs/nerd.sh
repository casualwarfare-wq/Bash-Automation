#!/bin/bash

N=(10 9 8 7 6 5 4 3 2 1 lol fall)
echo "${N[${#N[@]}-1]}"
STRING="This is a test script.s"
echo ${#STRING}
echo ${STRING:4}
expr index "$STRING" "test"
echo ${STRING[@]/a/the}
echo ${STRING[@]// /-}
echo ${STRING[@]/ /}
echo ${STRING[@]/%t/world}
echo "${STRING[@]/%s/ Today is $(date)}"
























