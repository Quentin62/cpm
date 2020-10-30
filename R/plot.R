plot.cpm <- function(x, t = NULL, type = "l", addDetectionTimes = FALSE, ...) {
  if(is.null(t))
    t = seq_along(x$x)
  plot(t, x$x, type = type, ...)
  abline(v = t[x$changePoints], lty = "dashed", col = "red")
  abline(v = t[x$changePoint], lty = "dashed", col = "red")
  if(addDetectionTimes)
  {
    abline(v = t[x$detectionTime], lty = "dashed", col = "blue")
    abline(v = t[x$detectionTimes], lty = "dashed", col = "blue")
  }
}

plotDs <- function(x, t = NULL, type = "l", ...) {
  if (!("detectChangePoint" %in% class(x)) && !("detectChangePointBatch" %in% class(x))) {
    stop("x must be the output of detectChangePoint or detectChangePointBatch function.")
  }
  if(is.null(t))
    t = seq_along(x$x)
  
  if ("detectChangePoint"  %in% class(x)) {
    plot(t[seq_along(x$Ds)], x$Ds, type = type, xlab = "t", ylab = "Ds", 
         ylim = c(min(x$Ds, na.rm = TRUE), max(x$Ds, x$thresholds[x$thresholds != 99999], na.rm = TRUE)), ...)  
    lines(t[seq_along(x$thresholds)], x$thresholds, lty = "dotted")
    abline(v = t[x$changePoint], lty = "dashed", col = "red")
    abline(v = t[x$detectionTime], lty = "dashed", col = "blue")
  }
  else {
    plot(t[seq_along(x$Ds)], x$Ds, type = type, xlab = "t", ylab = "Ds", 
         ylim = c(min(x$Ds, na.rm = TRUE), max(x$Ds, x$threshold, na.rm = TRUE)), ...)  
    abline(h = x$threshold, lty = "dotted")
    abline(v = t[x$changePoint], lty = "dashed", col = "red")
  }
}
