#' Output formats for working papers
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce customized documents. Copyright monash Copyright (C) 2017 Rob J Hyndman.
#' Modified by Priyanga Dilini Talagala for personal use.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Rob J Hyndman (Modified by Priyanga Dilini Talagala for personal use.)
#'
#' @export
workingpaper <- function(...) {
  template <- system.file("rmarkdown/templates/WorkingPaper/resources/working_paper.tex",
                          package="templatehub")
  bookdown::pdf_document2(...,
                          template = template
  )
}
