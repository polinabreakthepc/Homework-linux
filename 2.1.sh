#!/bin/bash

option=$1
word=$2

if [[ -z "$1" ]] || [[ -z "$2" ]]
then
    echo "введите аргумент -u или -l и слово"
    exit 
fi

if [[$1 == "-l"]]
then
    echo "${2,,}"
elif [[$1 == "-u"]]   
then
    echo "${2^^}"
else
    echo "Аргумент не найден"
    exit

fi












