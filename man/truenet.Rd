\name{truenet}
\alias{truenet}

\title{Reference, e.g. true, network of the example data set}
\usage{data( truenet )}
\arguments{
  \item{truenet}{Reference (true) network of the example data set.}
}
\value{
  \code{truenet} Reference (true) network of the example data set. 
}
\description{
  \code{truenet} A symmetric matrix, where non-zero elements correspond to true connections. 
}
\details{
      A symmetric matrix, where non-zero elements correspond to true connections.  
 }
\references{
      G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology (2010) 4:132.    
}
\seealso{\code{\link{c3}}, \code{\link{c3net}}, \code{\link{makemim}} }
\examples{
data(truenet)
}
\keyword{misc}

