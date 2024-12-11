#!/bin/bash
mkdir -p terminal_task/results
wget -P ~/terminal_task https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_41/gencode.v41.basic.annotation.gff3.gz
gunzip -f terminal_task/gencode.v41.basic.annotation.gff3.gz

awk '$3 == "gene"'  gencode.v41.basic.annotation.gff3 > filtered_genes.tsv
awk -F'\t' '$3 ~ /gene/ {print}' "$file" > filtered_genes.tsv

awk -F'\t' '$9 ~ /gene_type=unprocessed_pseudogene/ {print $1"\t"$4"\t"$5"\t"$7"\t"$9}' "$1" gencode.v41.basic.annotation.gff3 > filtered_genes.tsv
cut -f9 gencode.v41.basic.annotation.gff3 | sed 's/.*gene_name=\([^;]*\).*/\1/' >  filtered_genes.tsv

awk 'BEGIN { FS = OFS = "\t" } { if ($4 == "+") { $3 = $3 + 1 } print }' filtered_genes.tsv > temp.tsv && mv temp.tsv filtered_genes.tsv

awk 'BEGIN { FS = OFS = "\t" } { if ($4 == "-") { temp = $2; $2 = $3; $3 = temp; $4 = "+"; $3 = $3 + 1 } print }' filtered_genes.tsv > results.tsv

mv results.tsv terminal_task/results


