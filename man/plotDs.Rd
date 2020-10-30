\name{plotDs}
\alias{plotDs}
\title{Plot test statistics}
\usage{
  plotDs(
    x,
    t = NULL,
    type = "l",
    ...
  )
}
\arguments{
  \item{x}{output of \code{\link{detectChangePoint}} or \code{\link{detectChangePointBatch}} functions}
  
  \item{t}{time values}
  
  \item{type}{type of plot should be drawn. Possible types are "p" for points, "l" for lines, ...}
  
  \item{...}{extra arguments for plot}
}

\description{
  Plot test statistics and detection threshold. The changepoint is plot in red and the dDetection time in blue.
}
\examples{
## Use a Student-t CPM to detect a mean shift in a stream of Gaussian
## random variables which occurs after the 100th observation
x <- c(rnorm(100, 0, 1), rnorm(1000, 1, 1))
out <- detectChangePoint(x, "Student", ARL0 = 500, startup = 20)

plotDs(out)
}

\author{
  Quentin Grimonprez
}
