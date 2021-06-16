# Get cohorts from WebApi
baseUrlWebApi <- Sys.getenv("baseUrlAtlasOhdsiOrg")
# BearerToken <- ""
ROhdsiWebApi::setAuthHeader(baseUrl = baseUrlWebApi, authHeader = BearerToken)

studyCohorts <- ROhdsiWebApi::getCohortDefinitionsMetaData(baseUrl = baseUrlWebApi) %>% 
  dplyr::filter(stringr::str_detect(string = .data$name, pattern = 'TwT') |
                  stringr::str_detect(string = .data$name, pattern = 'covid vaccine') |
                  .data$id %in% c(331:349, 380:411, 426:427, 550:554))

##########################################
#remotes::install_github("OHDSI/Hydra",   ref = "develop")
# outputFolder <- "CohortDiagnostics"  # location where you study package will be created
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
                       skeletonVersion = skeletonVersion,
                       createdBy = createdBy,
                       createdDate = createdDate,
                       modifiedBy = modifiedBy,
                       modifiedDate = modifiedDate,
                       skeletonType = skeletonType,
                       organizationName = organizationName,
                       description = description,
                       cohortDefinitions = cohortDefinitionsArray)

jsonFileName <- paste0(file.path(tempFolder, "CohortDiagnosticsSpecs.json"))
write(x = specifications %>% RJSONIO::toJSON(pretty = TRUE, digits = 23), file = jsonFileName)


##############################################################
##############################################################
#######               Build package              #############
##############################################################
##############################################################
##############################################################


#### Code that uses the ExampleCohortDiagnosticsSpecs in Hydra to build package
hydraSpecificationFromFile <- Hydra::loadSpecifications(fileName = jsonFileName)
saveRDS(object = hydraSpecificationFromFile, file = file.path(dirname(outputFolder),'hydraSpecificationFromFile.rds'))

# regenerate from file
# hydraSpecificationFromFile <- readRDS(file = 'hydraSpecificationFromFile.rds')

unlink(x = outputFolder, recursive = TRUE)
dir.create(path = outputFolder, showWarnings = FALSE, recursive = TRUE)
Hydra::hydrate(specifications = hydraSpecificationFromFile,
               outputFolder = outputFolder
)

unlink(x = tempFolder, recursive = TRUE, force = TRUE)


##############################################################
##############################################################
######       Build, install and execute package           #############
##############################################################
##############################################################
##############################################################
