#' Naively featurize lines of text.
#'
#' @param ll lines of text
#'
#' @param split_pat a regular expression, handed on to \code{\link{strsplit}}
#'
#' @return a character vector of features
#'
#' @export

featurize <- function (ll, split_pat="\\W+") {
    result <- unlist(strsplit(ll, split_pat))
    result <- result[result != ""]
    tolower(result)
}

#' Import a bunch of text files as a single data frame
#'
#' With one row per feature.
#'
#' @param fs filenames
#'
#' @return a data frame with two columns, \code{title} and \code{feature}
#'
#' @export

feature_frame <- function (fs) {
    frms <- list()
    for (j in seq_along(fs)) {
        ll <- readLines(fs[j], encoding="UTF-8")
        words <- featurize(ll)
        frms[[j]] <- data.frame(title=basename(fs[j]),
                                feature=words,
                                stringsAsFactors=F)
    }

    do.call(rbind, frms)
}
