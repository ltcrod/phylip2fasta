import os
import argparse


parser= argparse.ArgumentParser(description='convert phylip to fasta, will not work with files with XX in their names (XX is allowed). This is just an amatorial script I made for a very specific task and that I want to share')
parser.add_argument("-i", "--input-phylip", required= True, dest= 'file',
                     help= "phylip formatted alignment to convert to fasta [REQUIRED]"
                    )
parser.add_argument("-o", "--output-name", required= False, dest= 'output', default='output',
                     help= "name of the converted fasta. .fasta extension will be added automatically  [default = output]"
                    )


args = parser.parse_args()

phylipname=args.file
ff = open("phylipname.tmp", "w")
ff.write(phylipname)
ff.close()

outname=args.output
on = open("out.tmp", "w")
on.write(outname)
on.close()


realdir=(os.path.dirname(__file__))
command=("bash  "+realdir+"/bash/phylip2fasta.sh")
os.system(command)


os.system("rm  out.tmp phylipname.tmp tmp_p2f.fasta")

os.system("echo phylip2phasta finished!")