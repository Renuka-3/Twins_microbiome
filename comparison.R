

#  Comparative analysis between Twins, siblings and unrelated pairs at phylum level (rarefraction)

library(mia)
library(vegan)
library(scater)
library(dplyr)
library(tidyverse)
library(magrittr)
library(ggsignif)
library(miaViz)

tse <- readRDS("sibdata/sibtwin_tse.rds")

# Calculate the list of sequencing depths across samples
sequencing_depths <- colSums(assay(tse))
# Calculate variation between highest and lowest sequencing depth
depth_variation <- max(sequencing_depths)/min(sequencing_depths)
depth_variation

# Let us see what happens when we operate with ntop highest variance features
ntop <- 5

# Calculate the standard deviations for each row
row_sds <- rowSds(assay(tse, "counts"))

# Get the indices of the top 5 rows with the highest standard deviations
top_indices <- order(row_sds, decreasing = TRUE)[1:ntop]

# Subset the tse object based on the top indices
tse_sub <- tse[top_indices, ]


tse_sub <- tse_sub[,!(colnames(tse_sub) %in% c("T6A", "T6B", "T7A", "T7B", "T8A", "T8B", "T9A", "T9B", "T11A", "T11B", "T12A", "T12B", "T13A", "T13B"))]
tse_sub <- subsetByPrevalentFeatures(tse_sub,
                                     rank = "Phylum",
                                     prevalence = 10/100)
di <- as.matrix(vegdist(t(assay(tse_sub, "counts")), method="bray"))
di <- reshape2::melt(di) %>% `colnames<-`(c("X","Y", "value"))

# split tse by twins and sibling
tse_list <- splitOn(tse_sub, f= "Pair")
tse_twin <- tse_list[[1]]
tse_sib <- tse_list[[2]]
set.seed(123)
twin_pairs <- colData(tse_twin) %>% as_tibble() %>% group_by(ID) %>%
  summarise(twin_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(twin_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("ID_1", "ID_2"))
set.seed(123)
within_pairs <- colData(tse_sib) %>% as_tibble() %>% group_by(ID) %>%
  summarise(within_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(within_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("ID_1", "ID_2"))
unrel <- tse_sub[,!(colnames(tse_sub) %in% c("T1A", "T2A", "T3A", "T4A", "T5A", "T10A", "S1", "S3", "S5", "S7", "S9", "S11"))]
colData(unrel)$Unr <- c("Unr1", "Unr2", "Unr3","Unr4", "Unr5", "Unr6", "Unr1","Unr2", "Unr3", "Unr4", "Unr5","Unr6")
set.seed(123)
unrel_pairs <- colData(unrel) %>% as_tibble() %>% group_by(Unr) %>%
  summarise(unrel_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(unrel_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("Unr_1", "Unr_2"))
combined <- rbind(
  merge(di, twin_pairs, by.x=c("X","Y"), by.y=c("ID_1", "ID_2")) %>%
    mutate(grp=rep("twin_pairs",nrow(twin_pairs))),
  merge(di, within_pairs, by.x=c("X","Y"), by.y=c("ID_1", "ID_2")) %>%
    mutate(grp=rep("within_pairs",nrow(within_pairs))),
  merge(di, unrel_pairs, by.x=c("X","Y"), by.y=c("Unr_1", "Unr_2")) %>%
    mutate(grp=rep("unrel_pairs",nrow(within_pairs))))

combined$grp <- factor(combined$grp, levels = c("unrel_pairs", "within_pairs", "twin_pairs"))
s1 <- ggplot(combined, aes(x = grp, y = value)) +
  geom_boxplot(outlier.shape = NA, lwd=0.8)+ geom_jitter(width= 0.05, size= 1.7)+
  #geom_jitter(aes(colour = grp), width= 0.05, size= 1.7) +
  geom_signif(comparisons = list(c("twin_pairs", "within_pairs"), c("twin_pairs", "unrel_pairs"), c("unrel_pairs","within_pairs")), map_signif_level = FALSE) +
  theme(text = element_text(size = 10)) + labs(x = "", y= "Bray-Curtis index", title = "A") + scale_x_discrete(labels=c("twin_pairs" = "Twins", "within_pairs" = "Siblings", "unrel_pairs" = "Unrelated")) + theme_bw(base_size = 20)
print(s1)



## Comparative analysis of twins, siblings and unrelataed individuals at genus level
tse <- readRDS("sibdata/sibtwin_tse.rds")
# Calculate the list of sequencing depths across samples
sequencing_depths <- colSums(assay(tse))
# Calculate variation between highest and lowest sequencing depth
depth_variation <- max(sequencing_depths)/min(sequencing_depths)
depth_variation

# Let us see what happens when we operate with ntop highest variance features
ntop <- 5

# Calculate the standard deviations for each row
row_sds <- rowSds(assay(tse, "counts"))

# Get the indices of the top 5 rows with the highest standard deviations
top_indices <- order(row_sds, decreasing = TRUE)[1:ntop]

# Subset the tse object based on the top indices
tse_sub <- tse[top_indices, ]

tse_sub <- tse[,!(colnames(tse_sub) %in% c("T6A", "T6B", "T7A", "T7B", "T8A", "T8B", "T9A", "T9B", "T11A", "T11B", "T12A", "T12B", "T13A", "T13B"))]
tse_sub <- subsetByPrevalentFeatures(tse_sub, rank = "Genus", prevalence = 10/100)
di <- as.matrix(vegdist(t(assay(tse_sub, "counts")), method="bray"))
di <- reshape2::melt(di) %>% `colnames<-`(c("X","Y", "value"))
# split tse for twins and siblings
tse_list <- splitOn(tse_sub, f= "Pair")
tse_twin <- tse_list[[1]]
tse_sib <- tse_list[[2]]
set.seed(123)
twin_pairs <- colData(tse_twin) %>% as_tibble() %>% group_by(ID) %>%
  summarise(twin_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(twin_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("ID_1", "ID_2"))
set.seed(123)
within_pairs <- colData(tse_sib) %>% as_tibble() %>% group_by(ID) %>%
  summarise(within_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(within_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("ID_1", "ID_2"))
unrel <- tse_sub[,!(colnames(tse_sub) %in% c("T1A", "T2A", "T3A", "T4A", "T5A", "T10A", "S1", "S3", "S5", "S7", "S9", "S11"))]
#colData(unrel)$Unr <- c("Unr1", "Unr1", "Unr2","Unr2", "Unr3", "Unr3", "Unr4","Unr4", "Unr5", "Unr5", "Unr6","Unr6")
colData(unrel)$Unr <- c("Unr1", "Unr2", "Unr3","Unr4", "Unr5", "Unr6", "Unr1","Unr2", "Unr3", "Unr4", "Unr5","Unr6")
set.seed(123)
unrel_pairs <- colData(unrel) %>% as_tibble() %>% group_by(Unr) %>%
  summarise(unrel_pairs=combn(Samples, 2, simplify = FALSE)) %>%
  dplyr::select(unrel_pairs) %>% .[[1]] %>% do.call(rbind, .) %>%
  as.data.frame() %>% `colnames<-`(c("Unr_1", "Unr_2"))
combined <- rbind(
  merge(di, twin_pairs, by.x=c("X","Y"), by.y=c("ID_1", "ID_2")) %>%
    mutate(grp=rep("twin_pairs",nrow(twin_pairs))),
  merge(di, within_pairs, by.x=c("X","Y"), by.y=c("ID_1", "ID_2")) %>%
    mutate(grp=rep("within_pairs",nrow(within_pairs))),
  merge(di, unrel_pairs, by.x=c("X","Y"), by.y=c("Unr_1", "Unr_2")) %>%
    mutate(grp=rep("unrel_pairs",nrow(within_pairs))))

#Reorder ggplot boxes 
combined$grp <- factor(combined$grp, levels = c("unrel_pairs", "within_pairs", "twin_pairs"))
s <- ggplot(combined, aes(x = grp, y = value)) +
  geom_boxplot(outlier.shape = NA, lwd=0.8)+ geom_jitter(width= 0.05, size= 1.7)+
  #geom_jitter(aes(colour = grp), width= 0.05, size= 1.7) +
  geom_signif(comparisons = list(c("twin_pairs", "within_pairs"), c("twin_pairs", "unrel_pairs"), c("unrel_pairs","within_pairs")), map_signif_level = FALSE) +
  theme(text = element_text(size = 10)) + labs(x = "", y= "Bray-Curtis index", title = "B") + scale_x_discrete(labels=c("twin_pairs" = "Twins", "within_pairs" = "Siblings", "unrel_pairs" = "Unrelated")) + theme_bw(base_size = 20)
print(s)
gridExtra::grid.arrange(s1, s, ncol = 2)
