/Users/helen/Downloads/ncbi-blast-2.16.0+/bin/tblastn \
-query $1 \
-subject $2 \
-task tblastn \
-outfmt '6 pident length qlen sseq' \
| awk '$1>30 && $2>0.9*$3 {print}' > $3
wc -l $3

# -outfmt '6 pident qcovs sseq' \
# | awk '$1>30 && $2>90 {print}' > $3
# wc -l $3