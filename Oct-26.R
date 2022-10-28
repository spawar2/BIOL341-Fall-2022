# Author: Pawar, Date: Oct 26, 2022, Purpose: To generate a phylogenetic tree

# Load the tree packages

library(ape);
library(phangorn);
library(phytools);
library(geiger)

# Read and write csv file
setwd("/Users/pawar/Desktop")

# To read only the csv files
data <- read.csv("Book1.csv", header=FALSE)

# To read only text files formats rtf or txt

data <- read.delim("Book1.rtf", header=FALSE)