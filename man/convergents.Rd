\name{convergents}
\alias{convergents}
\alias{gconvergents}
\alias{nconv}
\alias{ngconv}
\alias{c_contfrac}
\alias{c_contfrac_complex}
\alias{c_convergents}
\alias{c_convergents_complex}
\title{Partial convergents of continued fractions}
\description{
  Partial convergents of continued fractions or generalized continued fractions
}
\usage{
convergents(a)
gconvergents(a,b, b0 = 0)
nconv(a, give=FALSE)
ngconv(a, b, b0 = 0, give=FALSE)
}
\arguments{
  \item{a,b}{In function \code{convergents()}, the elements of \code{a}
    are the partial denominators (the first element of \code{a} is the
    integer part of the continued fraction).   In \code{gconvergents()}
    the elements of \code{a} are the partial numerators and the elements
    of \code{b} the partial denominators}
  \item{b0}{The floor of the fraction}
  \item{give}{Boolean, with \code{TRUE} meaning to return all
    convergents, and default \code{FALSE} meaning to return the final
    partial convergent}
}
\details{

Function \code{convergents()} returns partial convergents of the continued fraction
  \deqn{a_0+
    \frac{1}{a_1+
    \frac{1}{a_2+
    \frac{1}{a_3+
    \frac{1}{a_4+
    \frac{1}{a_5+\ddots
}}}}}}{ommitted: see PDF} 	

where \code{a} = \eqn{a_0,a_1,a_2,\ldots}{a_0,a_1,a_2,...} (note the
off-by-one issue).

 Function \code{gconvergents()} returns partial convergents of the continued fraction
  \deqn{b_0+
    \frac{a_1}{b_1+
    \frac{a_2}{b_2+
    \frac{a_3}{b_3+
    \frac{a_4}{b_4+
    \frac{a_5}{b_5+\ddots
}}}}}}{ommitted: see PDF} 	

where \code{a} = \eqn{a_1,a_2,\ldots}{a_1,a_2,...}

Functions \code{nconv()} and \code{ngconv()} are convenience wrappers
that return the numerical values of the convergents.

}
\value{
  Returns a list of two elements, \code{A} for the numerators and
  \code{B} for the denominators
}
\references{
  W. H. Press, B. P. Flannery, S. A. Teukolsky, and
  W. T. Vetterling 1992.  \emph{Numerical recipes 3rd edition: the art of
    scientific computing}.  Cambridge University Press; section 5.2
  \dQuote{Evaluation of continued fractions}
}
\author{Robin K. S. Hankin}
\note{
  This classical algorithm generates very large partial numerators and denominators.
  To evaluate limits, use functions \code{CF()} or \code{GCF()}.

}
\seealso{\code{\link{CF}}}
\examples{
# Successive approximations to pi:

jj <- convergents(c(3,7,15,1,292))
jj$A/jj$B - pi     # should get smaller


convergents(rep(1,10))

nconv(1:6,give=TRUE)

}
\keyword{math}

