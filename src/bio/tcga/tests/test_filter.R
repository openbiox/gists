# DNA analyte replicate filter
tcga_replicateFilter(tsb = c("TCGA-55-7913-01B-11D-2237-01", "TCGA-55-7913-01B-11X-2237-01", "TCGA-55-7913-01B-11D-2237-01"))

# RNA analyte replicate filter
tcga_replicateFilter(tsb = c("TCGA-55-7913-01B-11H-2237-01", "TCGA-55-7913-01B-11R-2237-01", "TCGA-55-7913-01B-11T-2237-01"), analyte_target = "RNA")
tcga_replicateFilter(tsb = c("TCGA-55-7913-01B-11R-2237-01", "TCGA-55-7913-01B-11R-2237-01", "TCGA-55-7913-01B-11T-2237-01"), analyte_target = "RNA")
tcga_replicateFilter(tsb = c("TCGA-55-7913-01B-11T-2237-01", "TCGA-55-7913-01B-11T-2237-01", "TCGA-55-7913-01B-11D-2237-01"), analyte_target = "RNA")

