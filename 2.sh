задание 1:
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


задание 2:
#!/bin/bash

file_path=$1
current_ext=$2
new_ext=$3

file_supported_formats=("txt" "pdf" "doc")
  if [[ ! " ${file_supported_formats[*]} " =~ " $current_ext " ]]
  then
    echo "Ошибка.Введите поддерживаемый формат файла ${file_supported_formats[*]}"
    exit
fi

 for $file_path in "$current_ext" ; do mv "$file_path" "${file_path%.*}.$new_ext"; done 

 задание 3:
#!/bin/bash
if [[ $# -ne 3 ]]; then
    echo "Ошибка: требуется 3 аргумента. Введено $#."
    exit 
else 
   echo "Начало обработки..."
fi
