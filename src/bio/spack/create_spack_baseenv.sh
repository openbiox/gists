#!/usr/bin/env bash
# require: spack
# author: Jianfeng
# email: lee_jianfeng@openbiox.org
# license: Apache-2.0
# version: v0.1.0
# Script to generate base env for bioinformatics analysis using spack
# Ensure source $SPACK_ROOT/share/spack/setup-env.sh
spack env create base
spack env activate base

# programming env 
# spack install r miniconda3 
# spack install julia lua
# spack install golang npm

# fetch data
spack install sra-toolkit

# QC
spack install fastqc rna-seqc

# alignment
spack install bwa bowtie2 star hisat2 gmap-gsnap tophat blat

# sequence and region manipulation
spack install htslib samtools bedtools2 bedops bamtools seqtk

# expression
spack install salmon

# variant Analysis
spack install freebayes vcftools varscan bcftools

# variant annotation
spack install snpeff

# Bigdata
# spack install spark hadhoop hdf5
