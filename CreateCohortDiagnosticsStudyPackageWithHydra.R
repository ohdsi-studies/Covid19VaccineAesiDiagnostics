# Get cohorts from WebApi
baseUrlWebApi <- Sys.getenv("baseUrlAtlasOhdsiOrg")
# BearerToken <- ""
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
write(x = specifications %>% RJSONIO::toJSON(pretty = TRUE, digits = 23), file = jsonFileName)


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
saveRDS(object = hydraSpecificationFromFile, file = 'hydraSpecificationFromFile.rds')

# regenerate from file
# hydraSpecificationFromFile <- readRDS(file = 'hydraSpecificationFromFile.rds')

unlink(x = outputFolder, recursive = TRUE)
dir.create(path = outputFolder, showWarnings = FALSE, recursive = TRUE)
Hydra::hydrate(specifications = hydraSpecificationFromFile,
               outputFolder = outputFolder, 
               skeletonFileName = file.path(tempFolder, 'skeleton.zip')
)

unlink(x = tempFolder, recursive = TRUE, force = TRUE)


## because Hydra does not support generate inclusion stats parameter, we have to use circe to create cohort sql
# https://github.com/OHDSI/Hydra/issues/21

listOfCohortJsonsInPackage <- list.files(path = file.path(outputFolder, 'inst', 'cohorts'), 
                                         pattern = ".json", 
                                         full.names = FALSE, 
                                         recursive = FALSE)
for (i in (1:length(listOfCohortJsonsInPackage))) {
  jsonFromFile <- SqlRender::readSql(sourceFile = file.path(outputFolder, 'inst', 'cohorts', listOfCohortJsonsInPackage[[i]]))
  cohortExpression <- CirceR::cohortExpressionFromJson(expressionJson = jsonFromFile)
  fileName <- stringr::str_replace(string = basename(listOfCohortJsonsInPackage[[i]]), 
                                   pattern = ".json", 
                                   replacement = "")
  genOp <- CirceR::createGenerateOptions(cohortIdFieldName = "cohort_definition_id",
                                         cohortId = fileName,
                                         cdmSchema = "@cdm_database_schema",
                                         targetTable = "@target_cohort_table",
                                         resultSchema = "@results_database_schema",
                                         vocabularySchema = "@vocabulary_database_schema",
                                         generateStats = TRUE)
  sql <- CirceR::buildCohortQuery(expression = cohortExpression, options = genOp)
  SqlRender::writeSql(sql = sql, targetFile = file.path(outputFolder, 'inst', 'sql', 'sql_server', paste0(fileName, '.sql')))
}

##############################################################
##############################################################
######       Build, install and execute package           #############
##############################################################
##############################################################
##############################################################
