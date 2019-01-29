\name{contfrac-package}
\alias{contfrac-package}
\alias{contfrac}
\docType{package}
\title{
\packageTitle{contfrac}
}
\description{
\packageDescription{contfrac}
}
\details{
The DESCRIPTION file:
\packageDESCRIPTION{contfrac}
\packageIndices{contfrac}

}
\author{
\packageAuthor{contfrac}
}
\keyword{ package }
\examples{


## CF() takes an integer sequence and returns the value of its continued fraction:
phi <- (sqrt(5)+1)/2
phi_cf <- CF(rep(1,100))     # phi = [1;1,1,1,1,1,...]
phi - phi_cf     # should be small


## as_cf() takes a real and returns its continued fraction representation:
as_cf(phi)
as_cf(pi)
as_cf(exp(1),25)    # OK up to element 21 (which should be 14)

## GCF() is a generalized continued fraction:
GCF(a=2:100,b=2:100,b0=1,finite=FALSE)  # This due to Euler

## convergents() gives a sequence of partial convergents:
convergents(rep(1,10))
}
