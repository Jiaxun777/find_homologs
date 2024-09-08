/Users/helen/Downloads/ncbi-blast-2.16.0+/bin/blastn \
-query $1 \
-subject $2 \
-task blastn-short \
-outfmt '6 pident length sseq' \
| awk '$1==100 && $2==28 {print}' > $3
wc -l $3