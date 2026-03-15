
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

options(renv.consent = TRUE)

renv::restore(prompt = FALSE, exclude = c("Gviz", "BSgenome.Hsapiens.UCSC.hg38"))

BiocManager::install("Gviz", ask = FALSE)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg38", ask = FALSE)
