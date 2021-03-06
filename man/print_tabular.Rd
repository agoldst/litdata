% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/table.R
\name{print_tabular}
\alias{print_tabular}
\title{Helper function for printing tabular data in knitted PDFs}
\usage{
print_tabular(x, digits = 0, alignment = paste(ifelse(sapply(x, is.numeric),
  "r", "l"), collapse = ""), include.colnames = T, floating = F,
  caption = NULL, label = NULL)
}
\arguments{
\item{x}{A data frame. Row names are ignored. Other objects must be
converted manually. To print a two-way contingency table \code{tab},
you might try \code{as.data.frame(as.matrix(tab))}.}

\item{digits}{The number of decimal places to keep for numbers.
Numbers are rounded to integers by default.}

\item{alignment}{A string specifying column formats. \code{"l",
"r", "c"} mean left-aligned, right-aligned, or center-aligned
respectively. There should be one specifier for each column. If this
parameter is a single character, it is applied to all columns. To
wrap the text of a column, use a specifier like \code{"p{0.5 in}"}.
By default, numeric columns are right-aligned and everything else is
left-aligned.}

\item{include.colnames}{Logical: should the \code{colnames} of
the \code{x} be used as column headers? You may wish to make the
column names more verbose (they can, in fact, include spaces and
punctuation). \code{TRUE}, by default.}

\item{floating}{Logical. If \code{TRUE}, the table will "float" to
a good position for page layout. In that case, make sure to caption
and label the table, and to refer to it in your text by label.
\code{FALSE}, by default.}

\item{caption}{Only applied to floating tables. Set to \code{NULL}
for no caption (the default).}

\item{label}{Only applied to floating tables. The LaTeX label for
the table. Should be letters, hyphens, and colons only, with no
spaces. If the label is, say, \code{"tbl:laureates"}, then you can
use \code{\\ref{tbl:laureates}} in your markdown to represent the
table \emph{number}. So you typically write things like \code{See
table \\ref{tbl:laureates}} and the result is "See table 2" (or
whatever number the table is). Set to \code{NULL} for no label (the
default).}
}
\description{
This function makes it a little more convenient to print a data frame
as a nicely-formatted table in a knitted PDF. Use this function in a
chunk with the \code{results="asis"} option set. The default values
should be enough to get along with when you're starting out, so you
can simply use \code{print_tabular(x)}.
}
\details{
It is not as easy as it should be to format tabular data nicely
in R markdown. Your R data structure has to be converted
into LaTeX commands for typesetting a table. This is not a
profound computational challenge, but it involves a bunch of
fiddly LaTeX parameters. The R package that helps with this,
\code{\link[xtable]{xtable}}, is itself fiddly and a bit confusing.
This function is meant to simply matters somewhat.

Unlike the \code{\link[xtable]{xtable}} function, the alignment
parameter here must always be given as a single string. Row names are
never used, so the number of columns to specify is the same as the
number of columns in the data frame.

To typeset successfully, the resulting LaTeX requires the
\code{booktabs} and \code{longtable} packages to be installed.
}
\seealso{
\code{\link[xtable]{xtable}}, \code{\link{print.xtable}}
}

