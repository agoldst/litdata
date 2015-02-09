#' Nobel literature laureates.
#'
#' This basic data about the laureates of the Nobel Prize in Literature
#' was obtained using the data API of \url{http://nobelprize.org}.
#'
#' For more information, see \url{http://www.nobelprize.org/nobel_organizations/nobelmedia/nobelprize_org/developer/}. According to the site, the data 
#' are ``free to use.''
#'
#' @format A data frame.
#'
"laureates"

#' Nobel literature laureate prize citations.
#'
#' For convenience, the prize ``motivations'' are stored separately here.
#' The data source is the same as for \code{laureates}
#'
#' @format A character vector, with elements in the same order as the rows
#'      of \code{laureates}
#'
"laureate_motivations"

#' The text of E.M. Hull's novel The Sheik.
#'
#' \emph{The Sheik}, by Edith Maude Hull, was published in London by Nash and Grayson in 1919. It is available in a public-domain plain text from Project Gutenberg at \url{http://www.gutenberg.org/cache/epub/7031/pg7031.txt}.
#'
#' This is a character vector, with one element per line of the plain text file, created by calling
#'
#' \code{readLines("http://www.gutenberg.org/cache/epub/7031/pg7031.txt")}
#'
#' @format A character vector.
"sheik_ll"
