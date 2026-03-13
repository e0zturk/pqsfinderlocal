options(timeout = 600)

install.packages("BiocManager")

BiocManager::install(c(
  "pqsfinder",
  "Biostrings",
  "Gviz",
  "BSgenome.Hsapiens.UCSC.hg38",
  "biomaRt",
  "rtracklayer"
))