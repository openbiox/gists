#!/usr/bin/env bash
# require: conda
# author: Jianfeng
# email: lee_jianfeng@openbiox.org
# license: Apache-2.0
# version: v0.1.0
# Script to generate base env for bioinformatics analysis using conda
conda create -n bioinfo

# Activate env
conda activate bioinfo || source activate bioinfo

# programming env 
# conda install r
# conda install julia lua
# conda install go nodejs

# fetch data
conda install sra-tools

# QC
conda install fastqc qualimap multiqc rna-seqc

# aligment
conda install bwa bowtie2 star hisat2 gmap tophat

# sequence and region manipulation
conda install htslib samtools bedtools bedops bamtools seqtk

# expression
conda install salmon

# variant Analysis
conda install freebayes vcftools varscan bcftools

# variant annotation
conda install snpeff snpsift

# Bigdata
# conda install hdf5
