\name{collate_roclet}
\alias{collate_roclet}
\title{Roclet: make Collate field in DESCRIPTION.}
\value{
  Rd roclet
}
\description{
  Roclet: make Collate field in DESCRIPTION.
}
\details{
  Topologically sort R files and record in Collate field.

  Each \code{@include} tag should specify the filename of
  one intrapackage dependency; multiple \code{@include}
  tags may be given.
}
\examples{
#' `example-a.R', `example-b.R' and `example-c.R' reside
#' in the `example' directory, with dependencies
#' a -> {b, c}. This is `example-a.R'.
#' @include example-b.R
#' @include example-c.R
NULL

roclet <- collate_roclet()
\dontrun{
roc_proc(roclet, dir('example'))
roc_out(roclet, dir('example'), "example")
}
}
