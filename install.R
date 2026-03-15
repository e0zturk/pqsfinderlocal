
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

options(renv.consent = TRUE)

renv::restore(prompt = FALSE)

BiocManager::install("Gviz", ask = FALSE)
if (!"BSgenome.Hsapiens.UCSC.hg38" %in% installed.packages()) {
        options(timeout = 600)
        BiocManager::install("BSgenome.Hsapiens.UCSC.hg38", ask = FALSE)
} else {message("BSgenome has been downloaded.")