% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/pgVirtual.R
\docType{methods}
\name{nOrganisms}
\alias{nOrganisms}
\alias{nOrganisms,pgVirtual-method}
\title{Get the number of organisms represented in a pangenome}
\usage{
nOrganisms(object)

\S4method{nOrganisms}{pgVirtual}(object)
}
\arguments{
\item{object}{A pgVirtual subclass}
}
\value{
An integer giving the number of organisms
}
\description{
This method returns the current number of organisms in a pgVirtual 
subclass. This is also the result of calling \code{length()} on the object.
}
\section{Methods (by class)}{
\itemize{
\item \code{pgVirtual}: The number of organisms in the pangenome for pgVirtual
subclasses.
}}

\examples{
testPG <- .loadPgExample()
nOrganisms(testPG)

}
