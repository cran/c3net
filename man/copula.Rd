
\name{copula}
\alias{copula}

\title{Copula transformation of data set}
\usage{copula( expdata )}
\arguments{
  \item{expdata}{Data set; rows correspond to variables (e.g. genes) and columns to samples.}
}
\value{
  \code{copula} returns a copula transformed data set. 
}
\description{
  \code{copula} takes a data set as input and applies a copula transformation - see details.
}
\details{
      The data set can be copula transformed for more stable estimations of the mutual information matrix.  Each row of the data set (gene samples of each gene) is copula transformed and obtained rdata. Here, the formula for conversion is copuladata =(rdata- 0.5)/numberofsamples. 
 }
\references{
      G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology (2010) 4:132.    
}

\seealso{\code{\link{c3}}, \code{\link{c3net}}, \code{\link{makemim}} }

\examples{
data(expdata)

expdata <- copula(expdata)
}
\keyword{misc}

