## core- upated

![](core_files/figure-markdown_strict/core-1.png)

## Most prevelent genera mean, median calculations

    ## DataFrame with 4 rows and 8 columns
    ##                     Kingdom         Phylum         Class             Order             Family           Genus      mean     median
    ##                 <character>    <character>   <character>       <character>        <character>     <character> <numeric>  <numeric>
    ## Staphylococcus     Bacteria     Firmicutes       Bacilli        Bacillales  Staphylococcaceae  Staphylococcus 0.5250364 0.52924957
    ## Bacillus           Bacteria     Firmicutes       Bacilli        Bacillales        Bacillaceae        Bacillus 0.1313850 0.01452424
    ## Corynebacterium    Bacteria Actinobacteria Actinomycetia Corynebacteriales Corynebacteriaceae Corynebacterium 0.0241378 0.00971342
    ## Anaerococcus       Bacteria     Firmicutes  Tissierellia    Tissierellales   Peptoniphilaceae    Anaerococcus 0.0216609 0.00463932

    ##  Staphylococcus     Pseudomonas        Bacillus    Anaerococcus Corynebacterium   Acinetobacter 
    ##       1.0000000       1.0000000       1.0000000       1.0000000       0.9615385       0.8461538

    ## DataFrame with 6 rows and 8 columns
    ##                    Kingdom         Phylum       Class       Order      Family       Genus        mean      median
    ##                <character>    <character> <character> <character> <character> <character>   <numeric>   <numeric>
    ## Firmicutes        Bacteria     Firmicutes          NA          NA          NA          NA 7.18353e-01 7.99003e-01
    ## Proteobacteria    Bacteria Proteobacteria          NA          NA          NA          NA 2.28033e-01 6.70659e-02
    ## Actinobacteria    Bacteria Actinobacteria          NA          NA          NA          NA 5.14973e-02 3.03059e-02
    ## Bacteroidetes     Bacteria  Bacteroidetes          NA          NA          NA          NA 1.89192e-03 1.74788e-04
    ## Tenericutes       Bacteria    Tenericutes          NA          NA          NA          NA 3.55609e-05 2.83439e-05
    ## NA                Bacteria             NA          NA          NA          NA          NA 3.57355e-05 2.81896e-05

    ## Proteobacteria     Firmicutes Actinobacteria  Bacteroidetes    Tenericutes Fibrobacteres  
    ##     1.00000000     1.00000000     1.00000000     0.61538462     0.07692308     0.07692308

\##Geographical location-wise genus abundance of twins
