\name{plot.postcp}
\alias{plot.postcp}
\title{
  Plot method for postCP.
}
\description{
  Plots results of postcp, plots observed data (if included in postcp output) and posterior probabilities.
}
\usage{
\method{plot}{postcp}(x, y=NULL, xlab = "index", ylab = "probability",
main = "Posterior Change Point Probability Distribution",
p.col = "blue", pch = 16, p.cex = NA, m.col = "brown",
m.lty = 2, m.lwd = 1, l.col = NA, l.lty = NA, l.lwd = NA, ...)
}
\arguments{
\item{x}{Results of postCP, use as input for plot.postcp.}
\item{y}{y coordinates for the default plot function. Defaults to NULL}
\item{xlab}{Label for x-axis (see par).}
\item{ylab}{Label for y-axis (see par).}
\item{main}{Main title of plot (see par).}
\item{p.col}{Colour of scatterplot of data (see par).}
\item{pch}{Type of character of scatterplot (see par).}
\item{p.cex}{cex parameter of scatterplot (see par).}
\item{m.col}{Graphical option for colour of mean line (see par).}
\item{m.lty}{Graphical option for type of mean line (see par).}
\item{m.lwd}{Graphical option for width of mean line (see par).}
\item{l.col}{Graphical option for colours of posterior probability lines, of length 1 for same colour for all lines or 1 for each line (see par).}
\item{l.lty}{Graphical option for types of posterior probability lines, of length 1 for same colour for all lines or 1 for each line (see par).}
\item{l.lwd}{Graphical option for widths of posterior probability lines, of length 1 for same colour for all lines or 1 for each line (see par).}
\item{\dots}{Additional arguments.}
}

\value{
\item{out}{List with limits of x and y-axis. May be useful for labelling.}
}

\details{
\tabular{ll}{
Package: \tab postCP\cr
Type: \tab Package\cr
Version: \tab 1.8.0\cr
Date: \tab 2016-09-07\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}

}

\author{
Gregory Nuel, The Minh Luong and Malith Jayaweera

Maintainer: Who to complain to \email{malithgsoc2016@gmail.com}
}

\references{
  Luong, T.M., Rozenholc, Y. & Nuel, G. (2012). Fast estimation of posterior probabilities in change-point models through a constrained hidden Markov model. \url{http://arxiv.org/pdf/1203.4394}
}

\keyword{ package }
\seealso{
\code{\link{postcp}}
}

\examples{
require(postCP)
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

}


