# Twins microbiome
### This is the code repository to analyze the skin microbiome of monozygotic twins ###

## Generate TSE object
Create TSE object using metadata, otu table, and taxa table. 

The data uses TreeSummarizedExperiment data container. 

To generate TSE object in RStudio run the script using the following command  
```
rmarkdown::render("TSE.Rmd")
```
 
## Analysis scripts and visualization
- [Alpha diversity analysis](alpha.Rmd) | [Figures](alpha.md): alpha diversity estimated using Shannon diversity index for all co-factors. 
- [Beta diversity analysis](beta.Rmd) | [Figures](beta.md): PCoA (BC index) and PERMANOVA (at 999 permutations) analysis carried out with confounding factors.
- [most prevalent microbiome](core.Rmd) | [Figures](core.md): Most prevalent phyla and genera at 0.1% abundance and 10% prevalence threshold.
