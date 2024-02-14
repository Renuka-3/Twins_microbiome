    ## PERMANOVA analysis
    tse <- readRDS("data/twins_tse.rds")
    tse <- transformSamples(tse, method = "relabundance")
    # Agglomerate data to Species level
    tse <- agglomerateByRank(tse, rank = "Genus")
    # Set seed for reproducibility

    set.seed(413)
    temp <- anova(
        betadisper( 
            vegdist(t(assay(tse,"relabundance")), method = "bray"),
            group = colData(tse)[,"Geographical_location"]))



    set.seed(1576)

    # We choose 999 random permutations
    permanova <- adonis2(t(assay(tse,"relabundance")) ~ Geographical_location + Diet + Gender,
                         by = "margin", 
                         data = colData(tse),
                         method = "bray",
                         permutations = 999)
    head(permanova)

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
