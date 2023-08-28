---
knitr: bookdown::render_book
title: "Data Modeling"
author: "Sara Altman, Bill Behrman"
date: "2022-04-16"
description: "This book is a practical introduction to modeling using the tidyverse."
url: 'https\://dcl-model.stanford.edu'
github-repo: dcl-docs/model
site: bookdown::bookdown_site
documentclass: book
bibliography: references.bib
link-citations: true
---

# Welcome {-}

## How to read this book {-}

You can easily copy the code in this book by hovering over a chunk and then clicking the copy button that appears in the upper-right corner.

Every dataset we use is contained in an R package, making it easy to follow along and replicate our examples. Many of the datasets are in our own [dcldata](https://github.com/dcl-docs/dcldata) package. To install dcldata, copy the following code and paste it into RStudio.


```r
# You can copy this code with the copy button!
# First, install remotes if you don't already have it:
# install.packages("remotes")
remotes::install_github("dcl-docs/dcldata")
```

To access the datasets, load the relevant package


```r
library(dcldata)
```

and then call the dataset by name.


```r
anscombe_1
#>    x_1     y
#> 1   10  8.04
#> 2    8  6.95
#> 3   13  7.64
#> 4    9  8.81
#> 5   11  8.33
#> 6   14  9.90
#> 7    6  7.24
#> 8    4  4.25
#> 9   12 10.84
#> 10   7  4.82
#> 11   5  5.68
```

All datasets have accompanying documentation, which you can find with the `?` operator.


```r
?anscombe_1
```

You can also view the names of all datasets in a given package with the `data()` function.


```r
data(package = "dcldata")
```


## An evolving book {-}

This book is not intended to be static. Starting in January 2020, we use this book to teach modeling in the Stanford [Data Challenge Lab](https://datalab.stanford.edu/challenge-lab) (DCL) course. The DCL functions as a testing ground for educational materials, as our students give us routine feedback on what they read and do in the course. We use this feedback to constantly improve our materials, including this book. The [source for the book](https://github.com/dcl-docs/model) is also available on GitHub where we welcome suggestions for improvements.

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/). 
