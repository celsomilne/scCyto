#' Obtain the Damond Diabetes data
#'
#' Download and cache the Damond diabetes single-cell spatial (scSpatial) dataset from ExperimentHub,
#' returning a \linkS4class{SegmentedCells} object for further use.
#'
#'
#' @details
#' This function provides the diabetes scSpatial data from Damond et al. (2019)
#' in the form of a \linkS4class{SegmentedCells} object.
#'
#'
#' @return A \linkS4class{SegmentedCells} object.
#'
#' @author Celso Milne
#'
#' @references
#' Damond, N., Engler, S., Zanotelli, V., Schapiro, D., Wasserfall, C., Kusmartseva, I., Nick, H., Thorel, F., Herrera, P., Atkinson, M. and Bodenmiller, B., 2019. A Map of Human Type 1 Diabetes Progression by Imaging Mass Cytometry.
#' \emph{Cell Metabolism}, 29(3), pp.755-768.e5.
#'
#' @examples
#' se <- DamondDiabetesData()
#'
#' @export
#' @importFrom spicyR SegmentedCells
DamondDiabetesData <- function(...) {
    version <- "1.0"
    se <- .create_se(file.path("Damond-Diabetes", version))
    se
}
