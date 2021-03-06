% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/pgInMem.R, R/modifying.R
\docType{methods}
\name{removeGene}
\alias{removeGene}
\alias{removeGene,pgInMem,missing,missing,missing,numeric-method}
\alias{removeGene,pgVirtual,character,missing,missing,missing-method}
\alias{removeGene,pgVirtual,character,character,missing,missing-method}
\alias{removeGene,pgVirtual,character,numeric,missing,missing-method}
\alias{removeGene,pgVirtual,missing,character,missing,missing-method}
\alias{removeGene,pgVirtual,missing,numeric,missing,missing-method}
\alias{removeGene,pgVirtual,missing,character,missing,numeric-method}
\alias{removeGene,pgVirtual,missing,numeric,missing,numeric-method}
\alias{removeGene,pgVirtual,missing,missing,character,missing-method}
\alias{removeGene,pgVirtual,missing,missing,numeric,missing-method}
\alias{removeGene,pgVirtual,missing,missing,character,numeric-method}
\alias{removeGene,pgVirtual,missing,missing,numeric,numeric-method}
\title{Remove genes from a pangenome}
\usage{
removeGene(object, name, organism, group, ind, ...)

\S4method{removeGene}{pgInMem,missing,missing,missing,numeric}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,character,missing,missing,missing}(object,
  name, organism, group, ind)


  \S4method{removeGene}{pgVirtual,character,character,missing,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,character,numeric,missing,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,character,missing,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,numeric,missing,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,character,missing,numeric}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,numeric,missing,numeric}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,missing,character,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,missing,numeric,missing}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,missing,character,numeric}(object,
  name, organism, group, ind)

\S4method{removeGene}{pgVirtual,missing,missing,numeric,numeric}(object,
  name, organism, group, ind)
}
\arguments{
\item{object}{A pgVirtual subclass}

\item{name}{A character vector of names of genes to remove}

\item{organism}{Either an integer or character vector of orgnanisms to remove
genes from. If neither name nor ind is given all genes in the organisms are 
removed.}

\item{group}{Either an integer or character vector of gene groups to remove
genes from. If ind is not given all genes in the groups are removed.}

\item{ind}{Indexes of the selections to remove. If both name, organism and 
group is not given, it indexes into the raw gene index, otherwise it indexes 
into the element defined by organism or group.}

\item{...}{parameters passed on (currently ignored).}
}
\value{
An object of the same class as object without the genes that should
be removed.
}
\description{
This method makes it possible to safely remove genes from a pangenome using a
variaty of selection mechanisms depending on the supplied parameters. The 
name parameter refers to the gene name, organism refers to either organism 
name or index, group refers to either gene group name or index and ind refers
to the gene index. See examples for details of the different possibilities.
}
\section{Methods (by class)}{
\itemize{
\item \code{object = pgInMem,name = missing,organism = missing,group = missing,ind = numeric}: Gene removal base function for pgInMem subclasses

\item \code{object = pgVirtual,name = character,organism = missing,group = missing,ind = missing}: Remove gene based on gene name

\item \code{object = pgVirtual,name = character,organism = character,group = missing,ind = missing}: Remove gene based on gene and organism name

\item \code{object = pgVirtual,name = character,organism = numeric,group = missing,ind = missing}: Remove gene based on gene name and organism index

\item \code{object = pgVirtual,name = missing,organism = character,group = missing,ind = missing}: Remove gene based on organism name

\item \code{object = pgVirtual,name = missing,organism = numeric,group = missing,ind = missing}: Remove gene based on organism index

\item \code{object = pgVirtual,name = missing,organism = character,group = missing,ind = numeric}: Remove gene based on organism name and gene index

\item \code{object = pgVirtual,name = missing,organism = numeric,group = missing,ind = numeric}: Remove gene based on organism and gene index

\item \code{object = pgVirtual,name = missing,organism = missing,group = character,ind = missing}: Remove gene based on gene group name

\item \code{object = pgVirtual,name = missing,organism = missing,group = numeric,ind = missing}: Remove gene based on gene group index

\item \code{object = pgVirtual,name = missing,organism = missing,group = character,ind = numeric}: Remove gene based on gene group name and gene index

\item \code{object = pgVirtual,name = missing,organism = missing,group = numeric,ind = numeric}: Remove gene based on gene group and gene index
}}

\note{
Required for subclasses of pgVirtual in order to extend the class
system of FindMyFriends
}
\examples{
testPG <- .loadPgExample(withGroups=TRUE)
nGenes(testPG)

# Remove gene number 6
removeGene(testPG, ind=5)

# Remove all genes from organism 'AE017244'
removeGene(testPG, organism='AE017244')

# Remove first gene in gene group 10
removeGene(testPG, group=10, ind=1)

}
