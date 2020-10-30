plot.cpm <- function(x, t = NULL, type = "l", ...) {
  if(is.null(t))
    t = seq_along(x$x)
  plot(t, x$x, type = type, ...)
  abline(v = t[x$changePoints], lty = "dashed", col = "red")
}

plotDs <- function(x, t = NULL, type = "l", ...) {
  if (!("detectChangePoint" %in% class(x))) {
    stop("x must be the output of detectChangePoint or detectChangePointBatch function.")
  }
  if(is.null(t))
    t = seq_along(x$x)
  plot(t[seq_along(x$Ds)], x$Ds, type = type, ...)
  abline(h = x$threshold, lty = "dotted")
  abline(v = t[x$changePoints], lty = "dashed", col = "red")
}