\name{CF}
\alias{CF}
\alias{GCF}
\title{Continued fraction convergent}
\description{
Returns continued fraction convergent using the modified Lenz's
algorithm; function \code{CF()} deals with continued fractions and
\code{GCF()} deals with generalized continued fractions.
}
\usage{
CF(a, finite = FALSE, tol=0)
GCF(a,b, b0=0, finite = FALSE, tol=0)
}
\arguments{
  \item{a,b}{In function \code{CF()}, the elements of \code{a} are the
    partial denominators; in \code{GCF()} the elements of \code{a} are
    the partial numerators and the elements of \code{b} the partial
    denominators} 
  \item{finite}{Boolean, with default \code{FALSE} meaning to iterate
    Lenz's algorithm until convergence (a warning is given if the
    sequence has not converged); and \code{TRUE} meaning to evaluate the
    finite continued fraction}
  \item{b0}{In function \code{GCF()}, floor of the continued fraction}
  \item{tol}{tolerance, with default \code{0} silently replaced with
    \code{.Machine$double.eps}}
}
\references{
  \itemize{
    \item W. H. Press, B. P. Flannery, S. A. Teukolsky, and
    W. T. Vetterling 1992.  \emph{Numerical recipes 3rd edition: the art of
      scientific computing}.  Cambridge University Press; section 5.2
    \dQuote{Evaluation of continued fractions}
    \item W. J. Lenz 1976.  Generating Bessel functions in Mie
    scattering calculations using continued fractions.  \emph{Applied
      Optics}, 15(3):668-671
  }
}
\author{Robin K. S. Hankin}
\details{
  Function \code{CF()} treats the first element of its argument as the
  integer part of the convergent.

  Function \code{CF()} is a wrapper for \code{GCF()}; it includes
  special dispensation for infinite values (in which case the value of
  the appropriate finite CF is returned).
  
  The implementation is in C; the real and complex cases are treated
  separately in the interests of efficiency.

  The algorithm terminates when the convergence criterion is achieved
  irrespective of the value of \code{finite}.
  
}
\seealso{\code{\link{convergents}}}
\examples{

phi <- (sqrt(5)+1)/2
phi_cf <- CF(rep(1,100))     # phi = [1;1,1,1,1,1,...]
phi - phi_cf     # should be small

# The tan function:

"tan_cf" <-
function(z,n=20){GCF(c(z, rep(-z^2,n-1)), seq(from=1,by=2, len=n)) }

z <- 1+1i
tan(z) - tan_cf(z)   # should be small


}
\keyword{math}
