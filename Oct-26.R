# Author: Pawar, Date: Oct 26, 2022, Purpose: To generate a phylogenetic tree

# Load the tree packages

library(ape);
library(phangorn);
library(phytools);
library(geiger)

# Read and write csv file
setwd("/Users/pawar/Desktop")

data <- read.csv("Book1.csv", header=FALSE)