
\name{sigtestMTC}
\alias{sigtestMTC}

\title{Elimination of nonsignificant edges by application of a procedure for multiple testing correction}
\usage{sigtestMTC( data, alpha, itnum, methodsig="BH")}
\arguments{
  \item{data}{Data set where rows correspond to variables (e.g. genes) and columns to samples.}

\item{alpha}{Significance level}

\item{itnum}{Number of iterations to resample data to estimate sampling distribution.}

\item{methodsig}{A procedure to perform a multiple testing correction, either controling the false discovery rate (FDR) or the family-wise error. Available option are "holm", "hochberg", "hommel", "bonferroni", "BH", "BY".}

}
\value{
  \code{sigtestMTC} returns an environment res that contains the new MI matrix, res$Inew, that is obtained after the elimination of nonsignificant elements with a MTC procedure. For advanced users, who are able to write code in R, we provided the variables obtained in the function so that one might want to make further analysis without running the function again. Please see the source code for the additional return values of the environment res. 
}
\description{
  \code{sigtestMTC} takes a data set as input and computes the mutual information matrix in which the nonsignificant elements are eliminated by a multiple testing correction - see details.
}

\details{
      The data set is resampled for each iteration and at the end the sampling distribution is obtained.   
 }

\references{
      G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology (2010) 4:132.    
}

\seealso{\code{\link{makemim}}, \code{\link{copula}}, \code{\link{c3}}, \code{\link{sigtestp}} }

\examples{
data(expdata)

data(truenet)

alpha <- 0.001

itnum <-2

res <- sigtestMTC( expdata, alpha, itnum, methodsig="BH")

net <- c3(res$Inew)  # regulatory network inferred (non zero elements stand for links of
		# the predicted network)

scores <- checknet(net,truenet)
}
\keyword{misc}

