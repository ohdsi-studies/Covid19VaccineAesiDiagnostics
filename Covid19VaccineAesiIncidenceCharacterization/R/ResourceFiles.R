getThisPackageName <- function() {
  return("Covid19VaccineAesiIncidenceCharacterization")
}

#' @export
readCsv <- function(resourceFile, packageName = getThisPackageName(), col_types = readr::cols()) {
  packageName <- getThisPackageName()
  pathToCsv <- system.file(resourceFile, package = packageName, mustWork = TRUE)
  fileContents <- readr::read_csv(pathToCsv, col_types = col_types)
  return(fileContents)
}