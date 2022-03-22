#Louad module
module add trimmomatic/0.33

#Trim jar
TRIM_BIN=java -jar /packages/7x/trimmomatic/0.33/trimmomatic.jar "$@"


#create basename
base=$(basename ${infile} _1.fastq.gz)

#run trimmoatic
$TRIM_BIN PE ${base}_1.fastq.gz ${base}_2.fastq.gz \
	${base}_1.trim.fastq.gz ${base}_1un.trim.fastq.gz \
	${base}_2.trim.fastq.gz ${base}_2un.trim.fastq.gz \
	SLIDINGWINDOW:4:20 MINLEN:25 ILLUMINACLIP:NexteraPE-PE.fa:2:40:15 
done


