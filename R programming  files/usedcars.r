---
title: "R Notebook"
output: html_notebook
---

This is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code. 

Try executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Ctrl+Shift+Enter*. 

```{r}
plot(cars)
```

```{r}
auto <- read.csv('D:\\r files\\autos.csv')
head(auto)
```

```{r}
str(auto)
```

```{r}
"Cleaning Empty Data and Convert Date"
```

```{r}
auto$offerType <- NULL
auto$name <- NULL
auto$seller <- NULL
auto$nrOfPictures <- NULL
auto$abtest <- NULL
```

```{r}
names(auto)
```

```{r}
install.packages('data.table')
```

```{r}
install.packages('lubridate')
```

```{r}
install.packages('zipcode')
```

```{r}
library(lubridate)
library(ggplot2)
library(data.table)
library(zipcode)
library(dplyr)
```

```{r}
auto$dateCrawled <- ymd_hms(auto$dateCrawled) 
auto$dateCreated <- ymd_hms(auto$dateCreated)
auto$lastSeen <- ymd_hms(auto$lastSeen)
```

```{r}
head(auto)
```
```{r}
summary(auto$price)
```

```{r}
quantile(auto$price, 0.90)
quantile(auto$price, 0.95)
quantile(auto$price, 0.01)
quantile(auto$price, 0.05)
quantile(auto$price, 0.10)
```

```{r}
range(auto$price)
quantile(auto$price)
```


Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Ctrl+Alt+I*.

When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Ctrl+Shift+K* to preview the HTML file).
