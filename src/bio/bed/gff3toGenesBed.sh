#!/usr/bin/env sh
# require: bedtools and bedops
# input: Gff3 format annotation file
# output: Bed with gene name
# author: Jianfeng
# email: lee_jianfeng@openbiox.org
# license: Apache-2.0
# usage: ./gff3toGenesBed.sh {input} {output}
#
# Demo Input:
# chr1    HAVANA  gene    11869   14409   .       +       .       ID=ENSG00000223972.5;gene_id=ENSG00000223972.5;gene_type=transcribed_unprocessed_pseudogene;gene_name=DDX11L1;level=2;havana_gene=OTTHUMG00000000961.2
# chr1    HAVANA  transcript      11869   14409   .       +       .       ID=ENST00000456328.2;Parent=ENSG00000223972.5;gene_id=ENSG00000223972.5;transcript_id=ENST00000456328.2;gene_type=transcribed_unprocessed_pseudogene;gene_name=DDX11L1;transcript_type=processed_transcript;transcript_name=DDX11L1-202;level=2;transcript_support_level=1;tag=basic;havana_gene=OTTHUMG00000000961.2;havana_transcript=OTTHUMT00000362751.1
# chr1    HAVANA  exon    11869   12227   .       +       .       ID=exon:ENST00000456328.2:1;Parent=ENST00000456328.2;gene_id=ENSG00000223972.5;transcript_id=ENST00000456328.2;gene_type=transcribed_unprocessed_pseudogene;gene_name=DDX11L1;transcript_type=processed_transcript;transcript_name=DDX11L1-202;exon_number=1;exon_id=ENSE00002234944.1;level=2;transcript_support_level=1;tag=basic;havana_gene=OTTHUMG00000000961.2;havana_transcript=OTTHUMT00000362751.1
#
# Demo output:
# chr1    11868   31109   DDX11L1;MIR1302-2;MIR1302-2HG;MIR6859-1;WASH7P
# chr1    34553   36081   FAM138A
# chr1    52472   53312   OR4G4P
# chr1    57597   64116   OR4G11P
# chr1    65418   71585   OR4F5
# chr1    89294   134836  AL627309.1;AL627309.3;CICP27
# chr1    135140  135895  AL627309.6
# chr1    137681  137965  AL627309.7
# chr1    139789  140339  AL627309.2
# chr1    141473  173862  AL627309.4;AL627309.5;RNU6-1100P

if [ ! $1 ]
then
    echo -e 'Function: Extract genes from gff3 file and output to bed format with gene name.'
    echo -e 'usage: \n\t./gff3toGenesBed.sh {input} {output}\n\t./gff3toGenesBed.sh gencode.v30.annotation.gff3 hg38.genes.bed'
    exit 0
fi
awk '$3 == "gene"' ${1} | convert2bed -i gff - | cut -f 1,2,3,10 \
    | sed 's/ID=.*gene_name=//g' | awk -F ';' '{print $1}' > genes.bed && bedtools merge -i genes.bed > gene.bed.tmp
bedmap --echo --echo-map-id-uniq --delim '\t' gene.bed.tmp genes.bed > ${2}
rm genes.bed
rm gene.bed.tmp

