## phylip2fasta
Simple script to convert phylip files into FASTA files

Can be installed adding to the profile source the following string:
```
alias phylip2fasta=python /{path_to}/phylip2fasta/phylip2fasta.py
```
If you can't don't worry, you can just launch it with ```python /{path_to}/phylip2fasta/phylip2fasta.py``` every time 


# Usage: 
```
phylip2fasta -i {input}.phy -o {output_name}
```
-i / --input-phylip : specify the phylip (.phy) file to convert to FASTA

-o / --output-name : specify the output FASTA file name; ```.fasta``` will be automatically added



A nice employment of this script is piping it to Edgardo Mortiz's [vcf2phylip](https://github.com/edgardomortiz/vcf2phylip) to rapidly convert VCF files into FASTA files.

=^._.^= ∫
