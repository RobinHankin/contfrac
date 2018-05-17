\name{as_cf}
\alias{as_cf}
\title{Approximates a real number in continued fraction form}
\description{
Approximates a real number in continued fraction form using a standard
simple algorithm
}
\usage{
as_cf(x, n = 10)
}
\arguments{
  \item{x}{real number to be approximated in continued fraction form}
  \item{n}{Number of partial denominators to evaluate; see Notes}
}
\author{Robin K. S. Hankin}
\note{
  Has difficulties with rational values as expected
}
\seealso{\code{\link{CF}},\code{\link{convergents}}}
\examples{
phi <- (sqrt(5)+1)/2
as_cf(phi,50)  # loses it after about 38 iterations ... not bad ...

as_cf(pi)  # looks about right
as_cf(exp(1),20)

f <- function(x){CF(as_cf(x,30),TRUE) - x}

x <- runif(40)
plot(sapply(x,f))


}
\keyword{math}
