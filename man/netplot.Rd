
\name{netplot}
\alias{netplot}

\title{Plotting the inferred network}
\usage{netplot(gnet)}
\arguments{
  \item{gnet}{A symmetric squared mutual information matrix that is inferred as final connection matrix, where i,j th element is the mutual information \eqn{I(i,j)} or \eqn{I(j,i)} between variables i and j. The nonzero elements may also be 1. Diagonal is all zero.}

}
\value{
  \code{netplot} returns an undirected network. 
}
\description{
  \code{netplot} takes the inferred mutual information matrix and plots a network wrt nonzero elements of the matrix - see details.
}

\details{
      A labelled undirected network is plotted wrt the row (column) names of the input matrix. When plotted, select "Layout" and then "Fruchterman-Reingold" and "OK" to get a better view. To remove labels, select "View" and deselect "Labels". To change the colors or size of nodes and edges, from "Select", click on "all edges" or "vertices" and on the network right click on nodes and change color or size.     
 }

\references{
      G. Altay, F. Emmert-Streib, "Inferring the conservative causal core of gene regulatory networks", BMC Systems Biology (2010) 4:132.    

      CSARDI G, NEPUSZ T.: igraph-package for R, 2008
}

\seealso{\code{\link{makemim}}, \code{\link{copula}}, \code{\link{c3}}, \code{\link{sigtestp}}, \code{\link{sigtestMTC}} }

\examples{
data(expdata)

data(truenet)

expdata <- copula(expdata)

mim <- makemim(expdata)

Ic <- 2  #Example cut-off for the first step of C3NET

mim[mim < Ic] <-0  #nonsignificant values eliminated wrt C3NET step 1.

net <- c3(mim)  # regulatory network inferred (non zero elements stand for links of
		# the predicted network)

netplot(net)
}
\keyword{misc}

