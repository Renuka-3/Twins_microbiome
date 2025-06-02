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
- **most prevalent microbiome** ([core.Rmd](core.Rmd)) | [Figure1](core.md): Most prevalent phyla and genera at 0.1% abundance and 10% prevalence threshold.
- **Alpha diversity analysis** ([alpha.Rmd](alpha.Rmd)) | [Figure2](alpha.md): alpha diversity estimated using Shannon diversity index for all co-factors. 
- **Beta diversity analysis** ([beta.Rmd](beta.Rmd) | [Figure3](beta.md): PCoA (BC index) and PERMANOVA (at 999 permutations) analysis carried out with confounding factors.
- **comparative analysis for twins, sibling and unrelated individuals** ([comparative_analysis.Rmd](comparative_analysis.Rmd)) | [Figure4](comparative_analysis.md): A) twins non twins analysis at 20% prevalence. B) Twins, sibling and unrelated analysis at 20% prevalence.

### cite the code [![DOI](https://zenodo.org/badge/757274106.svg)](https://doi.org/10.5281/zenodo.14576498)

