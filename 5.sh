grep -E '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.ru\b'
grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
mkdir genome
cd genome
 -- genome
 -- GCA
 #Если нам нужно просто найти файлы в названии которых есть эти два слова.Можно так ,можно с find
 locate genome
 locate GCA
 #если нам нужно определённое слово в определённом файле директории
grep 'genome|GCA' genome.txt
 awk -F '\t' '$7 == "-" && $9 ~ /name=[^AZH][^;]{3,}/ { print }' gencode.v41.basic.annotation.txt
