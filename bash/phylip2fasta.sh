#!/bin/bash

export filename=$(cat phylipname.tmp)
export outname=$(cat out.tmp)

echo phylip2fasta launched!
echo the input file is ${filename}
echo the output will be ${outname}.fasta

sed 's/\ /XXXXX/g' ${filename} \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
| sed 's/XXXXX/XXX/g' \
|  sed -e "1d" \
| sed 's/^/\n\>/g' \
| sed 's/XXX/\n/g' \
| sed 's/XX/\n/g' \
| sed -e "1d" \
> tmp_p2f.fasta

cp tmp_p2f.fasta ${outname}.fasta

echo the output file is $(ls ${outname}.fasta)