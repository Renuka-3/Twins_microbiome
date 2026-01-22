    ## Permutation test for adonis under reduced model
    ## Marginal effects of terms
    ## Permutation: free
    ## Number of permutations: 999
    ## 
    ## adonis2(formula = t(assay(tse, "relabundance")) ~ Geographical_location + Diet + Gender, data = colData(tse), permutations = 999, method = "bray", by = "margin")
    ##                       Df SumOfSqs      R2      F Pr(>F)   
    ## Geographical_location  2   1.3191 0.24276 3.5939  0.003 **
    ## Diet                   1   0.1579 0.02906 0.8606  0.543   
    ## Gender                 1   0.1401 0.02578 0.7634  0.574   
    ## Residual              21   3.8539 0.70924                 
    ## Total                 25   5.4338 1.00000                 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    ## Permutation test for adonis under reduced model
    ## Marginal effects of terms
    ## Permutation: free
    ## Number of permutations: 999
    ## 
    ## adonis2(formula = t(assay(tseE, "relabundance")) ~ Geographical_location + Diet + Gender, data = colData(tseE), permutations = 999, method = "bray", by = "margin")
    ##                       Df SumOfSqs      R2      F Pr(>F)  
    ## Geographical_location  2  0.73844 0.30291 2.1210  0.063 .
    ## Diet                   1  0.11232 0.04608 0.6453  0.701  
    ## Gender                 1  0.21248 0.08716 1.2206  0.294  
    ## Residual               8  1.39263 0.57126                
    ## Total                 12  2.43783 1.00000                
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

![](beta_files/figure-markdown_strict/b-1.png)![](beta_files/figure-markdown_strict/b-2.png)![](beta_files/figure-markdown_strict/b-3.png)![](beta_files/figure-markdown_strict/b-4.png)![](beta_files/figure-markdown_strict/b-5.png)![](beta_files/figure-markdown_strict/b-6.png)

# Jaccard

    ## Permutation test for adonis under reduced model
    ## Marginal effects of terms
    ## Permutation: free
    ## Number of permutations: 999
    ## 
    ## adonis2(formula = t(assay(tse, "pa")) ~ Geographical_location + Diet + Gender, data = colData(tse), permutations = 999, method = "jaccard", by = "margin")
    ##                       Df SumOfSqs      R2      F Pr(>F)    
    ## Geographical_location  2   0.9800 0.13609 1.8236  0.001 ***
    ## Diet                   1   0.2343 0.03253 0.8719  0.713    
    ## Gender                 1   0.3588 0.04983 1.3354  0.092 .  
    ## Residual              21   5.6429 0.78360                  
    ## Total                 25   7.2013 1.00000                  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    ## Permutation test for adonis under reduced model
    ## Marginal effects of terms
    ## Permutation: free
    ## Number of permutations: 999
    ## 
    ## adonis2(formula = t(assay(tseE, "pa")) ~ Geographical_location + Diet + Gender, data = colData(tseE), permutations = 999, method = "jaccard", by = "margin")
    ##                       Df SumOfSqs      R2      F Pr(>F)   
    ## Geographical_location  2   0.8113 0.23098 1.5146  0.008 **
    ## Diet                   1   0.2410 0.06861 0.8999  0.554   
    ## Gender                 1   0.3092 0.08803 1.1545  0.223   
    ## Residual               8   2.1425 0.61000                 
    ## Total                 12   3.5124 1.00000                 
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

\#PCoA

![](beta_files/figure-markdown_strict/PCoAJaccard-1.png)![](beta_files/figure-markdown_strict/PCoAJaccard-2.png)![](beta_files/figure-markdown_strict/PCoAJaccard-3.png)![](beta_files/figure-markdown_strict/PCoAJaccard-4.png)
