\name{plot.cpm}
\alias{plot.cpm}
\title{Plot signal and changepoints}
\usage{
  \method{plot}{cpm}(
    x,
    t = NULL,
    type = "l",
    addDetectionTimes = FALSE,
    ...
  )
}
\arguments{
  \item{x}{output of \code{\link{processStream}}, \code{\link{detectChangePoint}} or \code{\link{detectChangePointBatch}} functions}
  
  \item{t}{time values}
  
  \item{type}{type of plot should be drawn. Possible types are "p" for points, "l" for lines, ...}
    
  \item{addDetectionTimes}{If TRUE, detection times are added to the plot}
 
  \item{...}{extra arguments for plot}
}

\description{
  Plot signal and changepoints (in red). Detection times are plotted in blue.
}

\examples{
## Use a Student-t CPM to detect a mean shift in a stream of Gaussian
## random variables which occurs after the 100th observation
x <- c(rnorm(100, 0, 1), rnorm(1000, 1, 1))
out <- detectChangePoint(x, "Student", ARL0 = 500, startup = 20)
plot(out)

out <- processStream(x, "Student", ARL0 = 500, startup = 20)
plot(out)

out <- detectChangePointBatch(x, "Student", alpha = 0.05)
plot(out)

}

\author{
  Quentin Grimonprez
}