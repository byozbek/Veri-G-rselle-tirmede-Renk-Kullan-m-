---
title: "Untitled"
format: pdf
editor: visual
---
```{r, message=FALSE, warning=FALSE}
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("devtools")
install.packages("MetBrewer")
library(MetBrewer)
library(devtools)
library(tidyverse)
library(ggplot2)
library(dplyr)
```


# ANKET GRAFİĞİ

```{r, message=FALSE, warning=FALSE}
renk2 <- within(renk, {
Puan[0 <= Puan & Puan <=89] <- "Renk Körü"
Puan[100 <= Puan & Puan <= 100] <- "Normal Gören"
})
```


```{r, message=FALSE, warning=FALSE}
cbPalette <- c("#666666", "#0033FF")
```

```{r}
ggplot(renk2, aes(x=Cinsiyet, fill=Puan))+
  geom_bar(color="black", position = "dodge")+
  labs(y=" Kişi Sayisi",
       x="Cinsiyet",
       fill="Renk Körü Olup Olmaması",
       title="Cinsiyette Göre Renk Körü Oranlari")+
  ylim(0, 200)+
  theme(legend.position = "top",
      plot.title = element_text(size = 10, face="bold"),
      axis.text = element_text(size=10, face="bold"),
      axis.title = element_text(size=10, face = "bold"),
      legend.title = element_text(face = "bold"))+
  scale_fill_manual(values=cbPalette)
```

# HARİTALANDIRMA

```{r, message=FALSE, warning=FALSE}
devtools::install_github("htastan/TRmaps")
library(TRmaps)
install.packages("sf")
library(sf)
data("tr_nuts3")
data("trdata2015")
```

```{r}
tr_forest <- trdata2015 %>% 
  select(province, forest_area_per_km2)
tr_forest2 <- left_join(tr_nuts3, tr_forest, by = c("name_tr" = "province"))
```

```{r}
ggplot(tr_forest2) + 
  geom_sf(aes(fill = forest_area_per_km2)) +
  coord_sf()+
  labs(fill = "İllere Göre Orman Yoğunluğu") +
  theme_void()+
  theme(legend.title = element_text(face = "bold"))
```

```{r}
ggplot(tr_forest2) + 
  geom_sf(aes(fill = forest_area_per_km2)) +
  coord_sf()+
  labs(fill = "İllere Göre Orman Yoğunluğu") +
  theme_void()+
  theme(legend.title = element_text(face = "bold"))+
  scale_fill_gradientn(colors = met.brewer("Tam"))
```
```{r}
ggplot(tr_forest2) + 
  geom_sf(aes(fill = forest_area_per_km2)) +
  coord_sf()+
  labs(fill = "İllere Göre Orman Yoğunluğu") +
  theme_void()+
  theme(legend.title = element_text(face = "bold"))+
  scale_fill_gradientn(colors = met.brewer("VanGogh3"))
```

# GRUPLANDIRILMIŞ ÇUBUK GRAFİĞİ

```{r}
nba2 <- within(nba, {
  Age[32 <= Age ] <- "32+"
  Age[28 <= Age & Age <=32] <- "28-32"
  Age[19 <= Age & Age <=23] <- "19-23"
  Age[24 <= Age & Age <=28] <- "24-28"

})
```

```{r}
ggplot(nba2, aes(x= nba2$Pos, y=nba2$FG/sum(nba2$FG), fill=nba2$Age))+
  geom_bar(stat="identity", position = "dodge")+
  labs(x="Pozisyonlar",
       y="Atilan Sayilari",
       fill="Yas Araligi",
       title="Atilan Sayilarin Pozisyonlarina ve Yas Araligina Göre Orani",
       subtitle = "Çubuk Grafigi",
       caption = "https://www.kaggle.com/datasets/vivovinco/20222023
       -nba-player-stats-regular")
```

```{r}
cbbPalette <- c("#66CCFF", "#3399CC", "#0000FF", "#000066")
```

```{r}
ggplot(nba2, aes(x= nba2$Pos, y=nba2$FG/sum(nba2$FG), fill=nba2$Age))+
  geom_bar(stat="identity", position = "dodge")+
  labs(x="Pozisyonlar",
       y="Atilan Sayilari",
       fill="Yas Araligi",
       title="Atilan Sayilarin Pozisyonlarina ve Yas Araligina Göre Orani",
       subtitle = "Çubuk Grafigi",
       caption = "https://www.kaggle.com/datasets/vivovinco/20222023
       -nba-player-stats-regular")+
  scale_fill_manual(values=cbbPalette)+
  theme(plot.title = element_text(size = 13, face="bold"),
        axis.text = element_text(size=10, face="italic"),
        axis.title = element_text(size=12, face = "bold"),
        legend.title = element_text(face = "bold"))

```

# KORELOGRAM

```{r, message=FALSE, warning=FALSE}
install.packages("ggcorrplot")
library(ggcorrplot)
```

```{r}

data(mtcars)
corr <- round(cor(mtcars), 1)
head(corr[, 1:11])

```

```{r}
ggcorrplot(corr, type = "lower")
```
```{r}
ggcorrplot(corr, method = "circle", hc.order = TRUE, type = "lower",
   ggtheme = ggplot2::theme_gray,
   colors = c("#000000", "white", "#3333FF"))
```
# SANKEY DİYAGRAMI

```{r}
install.packages("remotes")
remotes::install_github("davidsjoberg/ggsankey")
library(ggsankey)
```

```{r}
t1 <- sample(x = c("Hosp A", "Hosp B", "Hosp C","Hosp D") , size = 100, replace=TRUE)
t2 <- sample(x = c("Male", "Female")   , size = 100, replace=TRUE)
t3 <- sample(x = c("Survived", "Died") , size = 100, replace=TRUE)

d <- data.frame(cbind(t1,t2,t3))
names(d) <- c('Hospital', 'Gender',  'Outcome')

TotalCount = nrow(d)

df <- d %>%
  make_long(Hospital, Gender, Outcome)


dagg <- df%>%
  dplyr::group_by(node)%>%
  tally()

dagg <- dagg%>%
  dplyr::group_by(node)%>%
  dplyr::mutate(pct = n/TotalCount)



df2 <- merge(df, dagg, by.x = 'node', by.y = 'node', all.x = TRUE)

pl <- ggplot(df2, aes(x = x
                      , next_x = next_x
                      , node = node
                      , next_node = next_node
                      , fill = factor(node)
                      
                      , label = paste0(node," n=", n, '(',  round(pct* 100,1), '%)' ))
)
 
pl <- pl +geom_sankey(flow.alpha = 0.5,  color = "black", show.legend = TRUE)
  pl <- pl +geom_sankey_label(size = 2, color = "black", fill= "white", hjust = -0.1)

pl <- pl +  theme_bw()
pl <- pl + theme(legend.position = "none")
pl <- pl +  theme(axis.title = element_blank()
                  , axis.text.y = element_blank()
                  , axis.ticks = element_blank()  
                  , panel.grid = element_blank())

pl <- pl + labs(title = "")
pl <- pl + labs(subtitle = "")
pl <- pl + labs(caption = "")
pl <- pl + labs(fill = '')

pl <- pl + scale_fill_manual(values = c('Died'    = "Orange"
                                          ,'Female'  ="skyblue"
                                          ,'Hosp A'  = "brown"
                                          ,'Hosp B' = "black"
                                          ,'Hosp C' = "pink"
                                          ,'Hosp D' = "purple"
                                          ,'Survived' = "yellow"
                                          ,'Male' = "green"
                                       
) )

pl
```



```{r}
t1 <- sample(x = c("Hosp A", "Hosp B", "Hosp C","Hosp D") , size = 100, replace=TRUE)
t2 <- sample(x = c("Male", "Female")   , size = 100, replace=TRUE)
t3 <- sample(x = c("Survived", "Died") , size = 100, replace=TRUE)

d <- data.frame(cbind(t1,t2,t3))
names(d) <- c('Hospital', 'Gender',  'Outcome')

TotalCount = nrow(d)

df <- d %>%
  make_long(Hospital, Gender, Outcome)


dagg <- df%>%
  dplyr::group_by(node)%>%
  tally()

dagg <- dagg%>%
  dplyr::group_by(node)%>%
  dplyr::mutate(pct = n/TotalCount)


df2 <- merge(df, dagg, by.x = 'node', by.y = 'node', all.x = TRUE)

pl <- ggplot(df2, aes(x = x
                      , next_x = next_x
                      , node = node
                      , next_node = next_node
                      , fill = factor(node)
                      
                      , label = paste0(node," n=", n, '(',  round(pct* 100,1), '%)' ))
)
 
pl <- pl +geom_sankey(flow.alpha = 0.5,  color = "white", show.legend = TRUE)
  pl <- pl +geom_sankey_label(size = 2, color = "black", fill= "white", hjust = -0.1)

pl <- pl +  theme_bw()
pl <- pl + theme(legend.position = "none")
pl <- pl +  theme(axis.title = element_blank()
                  , axis.text.y = element_blank()
                  , axis.ticks = element_blank()  
                  , panel.grid = element_blank())

pl <- pl + labs(title = "")
pl <- pl + labs(subtitle = "")
pl <- pl + labs(caption = "")
pl <- pl + labs(fill = '')




pl
```



