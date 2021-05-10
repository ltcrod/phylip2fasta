## phylip2fasta
Simple script to convert phylip files into FASTA files.

Can be installed adding to the profile source the following string:
```
alias phylip2fasta=python /{path_to}/phylip2fasta/phylip2fasta.py
```
If you can't don't worry, you can just launch it with ```python /{path_to}/phylip2fasta/phylip2fasta.py``` every time.


# Usage: 
```
phylip2fasta -i {input}.phy -o {output_name}
```
-i / --input-phylip : specify the phylip (```.phy```) file to convert to FASTA;

-o / --output-name : specify the output FASTA file name; ```.fasta``` will be automatically added at the end of the output file.



# Tips and tricks 

A nice employment of this script is piping it to edgardomortiz's [vcf2phylip](https://github.com/edgardomortiz/vcf2phylip) to rapidly convert VCF files into FASTA files.

Another nice script to directly convert VCFs into FASTAs is raveancic's [fromhaplomulti-VCF2FASTA](https://github.com/raveancic/fromhaplomulti-VCF2FASTA).
