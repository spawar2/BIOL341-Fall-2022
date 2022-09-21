# Run from terminal 
wget ftp://ftp.ncbi.nih.gov/blast/executables/blast+/2.2.28/

ncbi-blast-2.2.28+.dmg

# Check the install version
blastp -version
makeblastdb -version

# Install rBLAST package in R and its loading
devtools::install_github("mhahsler/rBLAST")
library(rBLAST)

# Setting the working directory
setwd("/Users/pawar/Desktop")

# download the 16S Microbial data base from NCBI
download.file("https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz", "16S_ribosomal_RNA.tar.gz", mode='wb')

# Unzip of your reference file
untar("16S_ribosomal_RNA.tar.gz", exdir="16SMicrobialDB")

## load some test data 
seq <- readRNAStringSet("/Users/pawar/Desktop/RNA_example.fasta")

## load a BLAST database (replace db with the location + name of the BLAST DB)
cd 16SMicrobialDB
makeblastdb -in /Users/pawar/Desktop/RNA_example.fasta -out my_reference -parse_seqids -dbtype nucl
bl <- blast(db="/Users/pawar/Desktop/16SMicrobialDB/my_reference", type = "blastn")

cl <- predict(bl, seq[1,])
cl[1:5,]

