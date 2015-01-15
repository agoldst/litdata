#' Software for Students in "Literary Data: Some Approaches"
#' 
#' This R package includes software and document templates we'll all use in the 
#' course.
#' 
#' To install it, first use RStudio's \code{Install Packages...} command in the 
#' \code{Tools} menu to install the package \code{devtools}. Then enter the 
#' following in the console:
#' 
#' \code{devtools::install_github("agoldst/litdata")}
#' 
#' This will also attempt to install other R packages I have listed as 
#' "dependencies," so you may see several rounds of downloading and installing 
#' happen.
#' 
#' If I update the code, I'll ask you to update your copy of this package. To do
#' this, simply enter \code{devtools::install_github("agoldst/litdata")} again.
#' 
#' Also included are templates for writing the homework responses in our 
#' "literate programming" idiom, R markdown. In RStudio, choose \code{File > New
#' File... > R Markdown...} and click \code{From Template}. You should see a 
#' choice for each homework. Soon I will also provide some generic templates 
#' when you work on longer projects.
#' 
#' In order to create PDF files from your R markdown source, you will also need 
#' to install TeX. Mac users can install MacTeX from 
#' \url{http://tug.org/mactex}; Windows users can install MikTeX 
#' (\url{http://miktex.org/download}) or TeX Live 
#' (\url{http://tug.org/texlive}). A final possibility (on any operating system)
#' is to use the Vagrant virtual machine imagine containing all required
#' software for the course at \url{http://github.com/agoldst/litdata-vagrant}.
#' 
#' 
#' @name litdata
#' @docType package
NULL


.onAttach <- function(...) {
    if (!interactive()) {
        return()
    }
    packageStartupMessage(
'To update course files and packages, use

    devtools::install_github("agoldst/litdata")'
    )
}
