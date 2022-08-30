#Author: Pawar; Date: 08/29/2022; Purpose: Testing R script

# Install microarray packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("affy")

# Load the package affy
library(affy)
