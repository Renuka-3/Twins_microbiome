## core- upated

![](core_files/figure-markdown_strict/core-1.png)

## Most prevelent genera mean, median calculations

    ## DataFrame with 6 rows and 8 columns
    ##                     Kingdom         Phylum               Class             Order             Family
    ##                 <character>    <character>         <character>       <character>        <character>
    ## Staphylococcus     Bacteria     Firmicutes             Bacilli        Bacillales  Staphylococcaceae
    ## Bacillus           Bacteria     Firmicutes             Bacilli        Bacillales        Bacillaceae
    ## Corynebacterium    Bacteria Actinobacteria       Actinomycetia Corynebacteriales Corynebacteriaceae
    ## Anaerococcus       Bacteria     Firmicutes        Tissierellia    Tissierellales   Peptoniphilaceae
    ## Pseudomonas        Bacteria Proteobacteria Gammaproteobacteria   Pseudomonadales   Pseudomonadaceae
    ## Micrococcus        Bacteria Actinobacteria       Actinomycetia     Micrococcales  Microbacteriaceae
    ##                           Genus       mean      median
    ##                     <character>  <numeric>   <numeric>
    ## Staphylococcus   Staphylococcus 0.52503637 0.529249567
    ## Bacillus               Bacillus 0.13138500 0.014524240
    ## Corynebacterium Corynebacterium 0.02413780 0.009713417
    ## Anaerococcus       Anaerococcus 0.02166092 0.004639319
    ## Pseudomonas         Pseudomonas 0.09559647 0.000659545
    ## Micrococcus         Micrococcus 0.00893558 0.000391056

    ##  Staphylococcus     Pseudomonas        Bacillus    Anaerococcus Corynebacterium   Acinetobacter 
    ##       1.0000000       1.0000000       1.0000000       1.0000000       0.9615385       0.8461538

    ## DataFrame with 6 rows and 8 columns
    ##                    Kingdom         Phylum       Class       Order      Family       Genus        mean
    ##                <character>    <character> <character> <character> <character> <character>   <numeric>
    ## Firmicutes        Bacteria     Firmicutes          NA          NA          NA          NA 7.18353e-01
    ## Proteobacteria    Bacteria Proteobacteria          NA          NA          NA          NA 2.28033e-01
    ## Actinobacteria    Bacteria Actinobacteria          NA          NA          NA          NA 5.14973e-02
    ## Bacteroidetes     Bacteria  Bacteroidetes          NA          NA          NA          NA 1.89192e-03
    ## Tenericutes       Bacteria    Tenericutes          NA          NA          NA          NA 3.55609e-05
    ## NA                Bacteria             NA          NA          NA          NA          NA 3.57355e-05
    ##                     median
    ##                  <numeric>
    ## Firmicutes     7.99003e-01
    ## Proteobacteria 6.70659e-02
    ## Actinobacteria 3.03059e-02
    ## Bacteroidetes  1.74788e-04
    ## Tenericutes    2.83439e-05
    ## NA             2.81896e-05

    ## Proteobacteria     Firmicutes Actinobacteria  Bacteroidetes    Tenericutes Fibrobacteres  
    ##     1.00000000     1.00000000     1.00000000     0.61538462     0.07692308     0.07692308
