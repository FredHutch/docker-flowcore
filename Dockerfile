FROM bioconductor/bioconductor_docker:RELEASE_3_17

RUN R -e 'BiocManager::install("openCyto")' && \
    R -e 'library(openCyto)' && \
    R -e 'BiocManager::install("cytolib")' && \
    R -e 'library(cytolib)' && \
    R -e 'BiocManager::install("flowCore")' && \
    R -e 'library(flowCore)' && \
    R -e 'BiocManager::install("flowAI")' && \
    R -e 'library(flowAI)' && \
    R -e 'BiocManager::install("flowDensity")' && \
    R -e 'library(flowDensity)' && \
    R -e 'BiocManager::install("flowClean")' && \
    R -e 'library(flowClean)' && \
    R -e 'remotes::install_github("RGLab/cytoqc")' && \
    R -e 'library(cytoqc)'
