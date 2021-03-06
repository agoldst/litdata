% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/mallet.R
\name{read_mallet_state}
\alias{read_mallet_state}
\title{Load MALLET sampling state from disk}
\usage{
read_mallet_state(filename, doc_ids = NULL)
}
\arguments{
\item{filename}{name of gzip file holding the sampling state}

\item{doc_ids}{character vector of document IDs. If supplied, the
\code{doc} column of the resulting dataframe will be populated with
these values. If it is not supplied, then the \code{doc} column will
be document numbers (from 1, not 0 as in the state file).}
}
\value{
a data frame with three columns, \code{doc}, \code{word},
and \code{topic}. \code{doc} is either a document index or an ID if
\code{doc_ids} is supplied; \code{word} is the token as a string; and
\code{topic} is the topic number (counting from 1, not 0)
}
\description{
A helper function to read in a MALLET sampling state.
}
\details{
Does not require the \code{mallet} package. As long as the
supplied file is of the expected format (e.g. from command-line MALLET),
this will do the job. Well, if you have the RAM.

To get a list of stored document IDs from a model object
\code{model}, use \code{model$getDocumentNames()}.
}
\seealso{
\code{\link{write_mallet_state}}
}

