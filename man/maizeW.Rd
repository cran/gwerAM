\name{maizeW}
\docType{data}
\alias{maizeW}
\title{Marker matrix required for "gwerAM()"}
\description{
  This matrix contains the molecular marker information required for \command{gwerAM}.
}

\usage{data(maizeW)}
\format{The matrix has 553 columns, one for each single nucleotide polymorphism
marker. Each row gives the genotypic information for one of the 277 diverse maize inbred lines (Yu et al. 2006). Missing data is coded with NA.
Multiallelic markers are coded similarly to biallelic markers with integers
indicating which allele being present at each marker-genotype combination.
}

%\source{}
\references{
Yu, J., Pressoir, G., Briggs, W.H., Bi, I.V., Yamasaki, M., Doebley, J.F., McMullen, M.D., Gaut, B.S., Holland, J.B., Kresovich, S., and Buckler, E.S. 2006. A unified mixed-model method for association mapping accounting for multiple levels of relatedness. Nature Genetics 38: 203-208.
  }


