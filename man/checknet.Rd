
\name{checknet}
\alias{checknet}

\title{Validating the inferred network}
\usage{checknet( finalrelationmatrix, realrelationmatrix)}
\arguments{
  \item{finalrelationmatrix}{The inferred symmetric mutual information matrix, where i,j th element is the mutual information \eqn{I(i,j)} or \eqn{I(j,i)} between two variables i and j. The diagonal is set to zero.}

\item{realrelationmatrix}{A symmetric reference connection matrix, where a 1 at i,j th element defines the connection between variables i and j  and non-connection is represented by 0. The diagonal is all zero.}

}
\value{
  \code{checknet} returns a vector with 6 elements, that contains the parameters as output <- c(precision, Fscore, recall, TP, FP, FN). 
}
\description{
  \code{checknet} takes the inferred mutual information matrix and the true network for validation. - see details.
}

\references{
      G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology, (2010) 4:132.    
}

\seealso{\code{\link{makemim}}, \code{\link{copula}}, \code{\link{c3}}, \code{\link{c3net}}, \code{\link{c3}}, \code{\link{makemim}}, \code{\link{copula}}, \code{\link{sigtestp}}, \code{\link{sigtestMTC}} }

\examples{
data(expdata)

data(truenet)

expdata <- copula(expdata)

mim <- makemim(expdata)

Ic <- 2  #Example cut-off value for mutual information for the first step of C3NET

mim[mim < Ic] <-0  #nonsignificant values eliminated wrt C3NET step 1.

net <- c3(mim)  # regulatory network inferred (non zero elements stand for links of
		# the predicted network)

scores <- checknet(net,truenet)
}
\keyword{misc}

