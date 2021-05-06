# Please see code in extras/ProjectSetup.R to ensure
# you have installed and initialized "renv" for this
# project.
library(Covid19VaccineAesiIncidenceCharacterization)

minCellCount <- 5

# Set the folder for holding the study output
outputFolder <- file.path(outputLocation, databaseId)
if (!dir.exists(outputFolder)) {
  dir.create(outputFolder, recursive = TRUE)
}
setwd(outputFolder)

# Use this to run the study. The results will be stored in a zip file called
# 'Results_<databaseId>.zip in the outputFolder.
runStudy(connectionDetails = connectionDetails,
         cdmDatabaseSchema = cdmDatabaseSchema,
         cohortDatabaseSchema = cohortDatabaseSchema,
         cohortTablePrefix = 'ir',
         exportFolder = outputFolder,
         databaseId = databaseId,
         databaseName = databaseId,
         databaseDescription = databaseId,
         incremental = TRUE,
         minCellCount = minCellCount)
