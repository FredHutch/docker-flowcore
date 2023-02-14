FROM quay.io/biocontainers/r-base:4.2.1

RUN R -e 'install.packages("BiocManager", repos = "http://cran.us.r-project.org"); BiocManager::install("flowCore"); BiocManager::install("flowAI"); BiocManager::install("flowDensity"); BiocManager::install("FlowSOM")'
