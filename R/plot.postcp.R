plot.postcp <-
function(x, y=NULL, xlab = "index",
         ylab = "probability", main = "Posterior Change Point Probability Distribution", p.col = "blue", pch = 16, p.cex = NA, m.col = "brown", m.lty = 2,
         m.lwd = 1, l.col = NA, l.lty = NA, l.lwd = NA)
{
  # x: results from function postCP
  if (missing(x)) {
    stop("Need to use results of postCP first")
  }
  n <- x$n

  #Create plot
  plot(c(1,n), c(min(x$response.variable), max(x$response.variable)), t = "n", xlab = xlab,
         ylab = "y", col = p.col, pch = pch, cex = p.cex)
  #Change points
  abline(v = x$cp, col = m.col, lty = m.lty, lwd = m.lwd);
  #Add points to the graph
  points(x$response.variable, t = 'l', col = p.col, lty = 1)
  title(main = "Original Data")

}
