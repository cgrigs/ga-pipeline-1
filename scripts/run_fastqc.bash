#load fastqc moulde
module add fastqc/0.11.7

#set in and out varibles
OUTDIR=results/fastqc_untrimmed_reads
INPUT=data/untrimmed_fastq/*.fastq.gz


#create outout directory if necessary
mkdir -p $OUTDIR


#run fastqc
fastqc -o $OUTDIR $INPUT
