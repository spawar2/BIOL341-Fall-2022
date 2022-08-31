#Author: Pawar; Date: 08/29/2022; Purpose: Testing R script

# Install microarray packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("affy")

# Load the package affy
library(affy)

# Read CEL microarray files in R using library affy

# Setting the working directory
setwd("/Users/pawar/Desktop")

# Read the CEL files from current working directory
eset <- ReadAffy()

# Extracting expression values using following function
rma <- exprs(eset)

# Boxplot to view the expression of samples
boxplot(rma)