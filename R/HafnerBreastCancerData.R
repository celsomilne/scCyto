#' Obtain the Hafner BreastCancer data
#'
#' Download and cache the Hafner breast cancer single-cell spatial (scSpatial) dataset from ExperimentHub,
#' returning a \linkS4class{SegmentedCells} object for further use.
#'
#'
#' @details
#' This function provides the breast cancer scSpatial data from Hafner et al. (2016)
#' in the form of a \linkS4class{SegmentedCells} object.
#'
#'
#' @return A \linkS4class{SegmentedCells} object.
#'
#' @author Celso Milne
#'
#' @references
#' Hafner, M., Niepel, M., Chung, M. and Sorger, P., 2016. Growth rate inhibition metrics correct for confounders in measuring sensitivity to cancer drugs.
#' \emph{Nature Methods},  13(6), pp.521-527. Available at: <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4887336/>.
#'
#' @examples
#' se <- HafnerBreastCancerData()
#'
#' @export
#' @importFrom spicyR SegmentedCells
HafnerBreastCancerData <- function(...) {
    version <- "1.0"
    sce <- .create_se(file.path("Hafner-BreastCancer", version),
                      intensityString="intensity_",
                      morphologyString="shape_",
                      imageIDString="imageID")
    sce
}
