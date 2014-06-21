#' Software for Students in "Literary Data: Some Approaches"
#'
#' This R package includes software and document templates we'll all use in the
#' course.
#' 
#' To install it,
#' first use RStudio's \code{Install Packages...} command in the \code{Tools}
#' menu to install the package \code{devtools}. Then enter the following in the
#' console:
#' 
#' \code{devtools::install_github("litdata","agoldst")}
#' 
#' This will also
#' attempt to install other R packages I have listed as "dependencies," so you
#' may see several rounds of downloading and installing happen.
#' 
#' If I update the code, I'll ask you to update your copy of this package. To do
#' this, simply \code{devtools::install_github("litdata","agoldst")} again.
#' 
#' Also included are templates for writing in our "literate
#' programming" idiom, R markdown. In RStudio, choose
#' \code{File > New File... > R Markdown...}
#' and click \code{From Template}. You should see some choices for our course.
#' 
#' In order to create PDF files from your R markdown source, you will also need
#' to install TeX. Mac users can install MacTeX from \url{http://tug.org/mactex};
#' Windows users and others can install TeX Live from \url{http://tug.org/texlive}.
#'
#' @name litdata
#' @docType package
NULL
