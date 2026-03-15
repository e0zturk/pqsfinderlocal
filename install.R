
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

options(renv.consent = TRUE)

renv::restore(prompt = FALSE)

BiocManager::install("Gviz", ask = FALSE, force = TRUE)
BiocManager::install("BSgenome.Hsapiens.UCSC.hg38", ask = FALSE, force = TRUE)