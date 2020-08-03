#' Obtain the Lin Melanoma data
#'
#' Download and cache the Lin melanoma single-cell spatial (scSpatial) dataset from ExperimentHub,
#' returning a \linkS4class{SegmentedCells} object for further use.
#'
#'
#' @details
#' This function provides the melanoma scSpatial data from Lin et al. (2015)
#' in the form of a \linkS4class{SegmentedCells} object.
#'
#'
#' @return A \linkS4class{SegmentedCells} object.
#'
#' @author Celso Milne
#'
#' @references
#' Lin, J., Fallahi-Sichani, M. and Sorger, P., 2015. Highly multiplexed imaging of single cells using a high-throughput cyclic immunofluorescence method.
#' \emph{Nature Communications}, 6(1). Available at: <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4587398/>.
#'
#' @examples
#' se <- LinMelanomaData()
#'
#' @export
#' @importFrom spicyR SegmentedCells
LinMelanomaData <- function() {
    version <- "1.0"
    sc <- .create_se(file.path("Lin-Melanoma", version),
                     spatialCoords = c("x", "y"),
                     intensityString="protein_",
                     morphologyString="shape_",
                     cellIDString="cellID",
                     imageIDString="imageID")
    sc
}
