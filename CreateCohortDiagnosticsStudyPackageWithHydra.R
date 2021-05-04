# Get cohorts from WebApi
baseUrlWebApi <- Sys.getenv("baseUrlAtlasOhdsiOrg")
# bearerToken <- ""
ROhdsiWebApi::setAuthHeader(baseUrl = baseUrlWebApi, authHeader = BearerToken)
studyCohorts <- ROhdsiWebApi::getCohortDefinitionsMetaData(baseUrl = baseUrlWebApi) %>% 
  dplyr::filter(stringr::str_detect(string = .data$name, pattern = 'TwT') |
                  .data$id %in% c(331:349, 380:411))

##########################################
#remotes::install_github("OHDSI/Hydra")
outputFolder <- "CohortDiagnostics"  # location where you study package will be created
library(magrittr)

########## Please populate the information below #####################
version <- "v0.1.0"
name <- "Adverse Events of Special Interest related to Covid 19 vaccination - an OHDSI network study"
packageName <- "ThrombosisWithThrombocytopeniaSyndrome"
skeletonVersion <- "v0.0.1"
createdBy <- "rao@ohdsi.org"
createdDate <- Sys.Date() # default
modifiedBy <- "rao@ohdsi.org"
modifiedDate <- Sys.Date()
skeletonType <- "CohortDiagnosticsStudy"
organizationName <- "OHDSI"
description <- "Adverse Events of Special Interest related to Covid 19 vaccination"

# compile them into a data table
cohortDefinitionsArray <- list()
for (i in (1:nrow(studyCohorts))) {
        cohortDefinition <-
                ROhdsiWebApi::getCohortDefinition(cohortId = studyCohorts$id[[i]],
                                                  baseUrl = baseUrlWebApi)
        cohortDefinitionsArray[[i]] <- list(
                id = studyCohorts$id[[i]],
                createdDate = studyCohorts$createdDate[[i]],
                modifiedDate = studyCohorts$createdDate[[i]],
                logicDescription = studyCohorts$description[[i]],
                name = stringr::str_trim(stringr::str_squish(cohortDefinition$name)),
                expression = cohortDefinition$expression
        )
}

tempFolder <- tempdir()
unlink(x = tempFolder, recursive = TRUE, force = TRUE)
dir.create(path = tempFolder, showWarnings = FALSE, recursive = TRUE)

specifications <- list(id = 1,
                       version = version,
                       name = name,
                       packageName = packageName,
                       skeletonVersin = skeletonVersion,
                       createdBy = createdBy,
                       createdDate = createdDate,
                       modifiedBy = modifiedBy,
                       modifiedDate = modifiedDate,
                       skeletontype = skeletonType,
                       organizationName = organizationName,
                       description = description,
                       cohortDefinitions = cohortDefinitionsArray)

jsonFileName <- paste0(file.path(tempFolder, "CohortDiagnosticsSpecs.json"))
write(x = specifications %>% RJSONIO::toJSON(pretty = TRUE), file = jsonFileName)


##############################################################
##############################################################
#######       Get skeleton from github            ############
##############################################################
##############################################################
##############################################################
#### get the skeleton from github
download.file(url = "https://github.com/OHDSI/SkeletonCohortDiagnosticsStudy/archive/refs/heads/main.zip",
                         destfile = file.path(tempFolder, 'skeleton.zip'))
unzip(zipfile =  file.path(tempFolder, 'skeleton.zip'), 
      overwrite = TRUE,
      exdir = file.path(tempFolder, "skeleton")
        )
fileList <- list.files(path = file.path(tempFolder, "skeleton"), full.names = TRUE, recursive = TRUE, all.files = TRUE)
DatabaseConnector::createZipFile(zipFile = file.path(tempFolder, 'skeleton.zip'), 
                                 files = fileList, 
                                 rootFolder = list.dirs(file.path(tempFolder, 'skeleton'), recursive = FALSE))

##############################################################
##############################################################
#######               Build package              #############
##############################################################
##############################################################
##############################################################


#### Code that uses the ExampleCohortDiagnosticsSpecs in Hydra to build package
hydraSpecificationFromFile <- Hydra::loadSpecifications(fileName = jsonFileName)
unlink(x = outputFolder, recursive = TRUE)
dir.create(path = outputFolder, showWarnings = FALSE, recursive = TRUE)
Hydra::hydrate(specifications = hydraSpecificationFromFile,
               outputFolder = outputFolder, 
               skeletonFileName = file.path(tempFolder, 'skeleton.zip')
)


unlink(x = tempFolder, recursive = TRUE, force = TRUE)

saveRDS(object = specifications, file = 'specifications.rds')

# regenerate from file
# specifications <- readRDS(file = 'specifications.rds')

specifications <- list(studyCohorts = studyCohorts,
              cohortDefinitionsArray = cohortDefinitionsArray,
              specifications = specifications,
              hydraSpecificationFromFile = hydraSpecificationFromFile)


##############################################################
##############################################################
######       Build, install and execute package           #############
##############################################################
##############################################################
##############################################################
