% copyright (C) 2011 Stich
%
\name{gwerAM}
\alias{gwerAM}
\title{Calculates signifance thresholds for mixed-model association mapping}
\description{
  The function \emph{gwerAM} calculates for homozygous species significance thresholds with which the genome-wide error rate in mixed-model association mapping analyses can be controlled (Mueller et al. 2011).
}
\usage{
  gwerAM(A,
         Q,
         W,
         varianceA,
         varianceE,
         Nrsim=10000,
         k=c(0,1,2,5),
         alpha=c(0.05)) 
}
\arguments{
  \item{A}{Numerator relationship matrix or kinship matrix}
  \item{Q}{Population structure matrix with linearly independent columns}
  \item{W}{Matrix with molecular marker data}
  \item{varianceA}{Genotypic variance of the trait under consideration as inferred from QK mixed model without marker data}
  \item{varianceE}{Error variance of the trait under consideration as inferred from QK mixed model without marker data}
  \item{Nrsim}{Number of simulations; default = 10000}
  \item{k}{Number of allowed false positives for generalized genome-wide type I error rate (GWER_k); default = c(0,1,2,5)}
  \item{alpha}{vector of alpha levels; default = c(0.05)}
}
\value{
A list comprising the significance thresholds for all combinations of k and alpha
is generated.
}

\examples{

data(maizeA)
data(maizeQ)
data(maizeW)
data(maizevarianceA)
data(maizevarianceE)

gwerAM(A=maizeA,
       Q=maizeQ[,-ncol(maizeQ)],
       W=maizeW[,1:10],
       varianceA=maizevarianceA,
       varianceE=maizevarianceE,
       Nrsim=1000,
       k=c(0,1,2,5),
       alpha=c(0.01,0.05))

\dontrun{
The last column of maizeQ was removed in this example, as the 
columns sum up to one and, thus, are linearly dependent and 
confounded with the common intercept, whereas the columns of 
Q have to be linearly independent. Note that dropping the last
column of maizeQ does not alter the model.
}
\dontrun{
In this example, only the first ten markers were included to
reduce the computational effort. You should run it with all your markers.
}
}


%\keyword{
%}
\references{
Mueller, B., B. Stich, and H.-P. Piepho. 2011. A general method for controlling the genome-wide Type I error rate in linkage and association mapping experiments in plants. Heredity. 106: 825-831.
}
