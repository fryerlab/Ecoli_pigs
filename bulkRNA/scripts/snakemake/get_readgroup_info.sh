#!/bin/bash

# change directory
cd /research/labs/neurology/fryer/projects/sepsis/pig/Ecoli/bulkRNA/high_dose_batch2

# create file with list of R1 samples
ls -1 | grep _R1_ > R1Samples.txt

# change directory 

# loops through list 
touch sampleReadInfo.txt
for sample in `cat R1Samples.txt`; do
    zcat ${sample} | head -1 >> sampleReadInfo.txt
done;

# mv the files 
mv R1Samples.txt  /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/R1Samples.txt
mv sampleReadInfo.txt /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/sampleReadInfo.txt

cd /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake
paste -d "\t" R1Samples.txt sampleReadInfo.txt > sampleReadGroupInfo.txt
rm R1Samples.txt
rm sampleReadInfo.txt


cd /research/labs/neurology/fryer/projects/sepsis/pig/Ecoli/bulkRNA/low_dose_batch1

# create file with list of R1 samples
ls -1 | grep _R1_ > /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/R1Samples.txt

# change directory 

# loops through list 
touch /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/sampleReadInfo.txt
for sample in `cat /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/R1Samples.txt`; do
    zcat ${sample} | head -1 >> /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/sampleReadInfo.txt
done;

# mv the files 
#mv R1Samples.txt  /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/R1Samples.txt
#mv sampleReadInfo.txt /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake/sampleReadInfo.txt

cd /research/labs/neurology/fryer/m239830/Ecoli_pigs/bulkRNA/scripts/snakemake
paste -d "\t" R1Samples.txt sampleReadInfo.txt >> sampleReadGroupInfo.txt
rm R1Samples.txt
rm sampleReadInfo.txt
