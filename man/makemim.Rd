
\name{makemim}
\alias{makemim}

\title{Constructing mutual information matrix }
\usage{makemim( expdata )}
\arguments{
  \item{expdata}{Data matrix where rows correspond to variables (e.g. genes) and columns to samples.}
}
\value{
  \code{makemim} returns a symmetric mutual information matrix using empirical Gaussian estimator. 
}
\description{
  \code{makemim} takes the data set as input and computes mutual information values for each pair of variables (e.g. gene). - see details.
}
\details{
      A mutual information matrix is generated from a data set using an empirical Gaussian estimator.   
 }
\references{
	G. A. Darbellay, I. Vajda, "Estimation of the information by an adaptive partitioning of the observation space", IEEE Trans. Inf. Theory vol.45 (1999)	
	
	G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology, (2010) 4:132.    
}

\seealso{\code{\link{c3}},\code{\link{c3net}}, \code{\link{copula}}, \code{\link{checknet}} }

\examples{
data(expdata)

expdata <- copula(expdata)

mim <- makemim(expdata)

}
\keyword{misc}

