% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/mallet.R
\name{write_mallet_state}
\alias{write_mallet_state}
\title{Save MALLET sampling state to disk}
\usage{
write_mallet_state(model, filename)
}
\arguments{
\item{model}{model object from \code{\link[mallet]{MalletLDA}}.}

\item{filename}{name of file to save the sampling state to. The result is a
gzipped file.}
}
\description{
A helper function for saving the final sampling state.
}
\details{
Warning: the sampling state size grows linearly with the number of tokens in #' the corpus. Expect big files.
}
\seealso{
\code{\link{read_mallet_state}}
}

