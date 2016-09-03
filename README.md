# postCP

[![Build Status](https://travis-ci.org/malithj/postCP.svg)](https://travis-ci.org/malithj/postCP.svg)
[![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/postCP)](https://cran.r-project.org/package=postCP)

A package to estimate posterior probabilities and perform model selection in change-point models using constrained HMM.
To cite postCP in publications use:
Luong, T.M., Rozenholc, Y. & Nuel, G. (2012). Fast estimation of posterior
  probabilities in change-point models through a constrained hidden Markov model.
  URL http://arxiv.org/pdf/1203.4394
  
To install the development version of the package: 
```r
devtools::install_github("malithj/postCP", build_vignettes = TRUE)
```

Example usage: 
```r
library(postCP)
#prepare data
sigma=1.3
#Change point estimates
bp=c(7,10)
#Obtain data from longley dataset
data = longley
#Apply postcp function
res = postcp(Employed ~ GNP + Armed.Forces,family=gaussian(),data=data,bp=c(7,10),sigma)
#Plot the results
plot.postcp(res,main="Posterior Change Point Probability Distribution")

#Apply postcp function with maxFB=TRUE to obtain marginal distribution
res = postcp(Employed ~ GNP + Armed.Forces,family=gaussian(),data=data,bp=c(7,10),sigma,maxFB=TRUE)
#Plot the results
plot.postcp(res,main="Posterior Change Point Probability Distribution")
```

### Acknowledgements
The package was revived as a Google Summer of Code (GSoC) Project in 2016. 
[GSoC Project Page] (https://summerofcode.withgoogle.com/projects/#5543039787335680)  
The requirement specification for the project:
[Rstats Project Page] (https://github.com/rstats-gsoc/gsoc2016/wiki/postCP-change-point-detection)

### License
This package is free and open source software, licensed under GPL.
