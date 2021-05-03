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

# Get cohorts from multiple WebApi
cohortIdsInWebApi1 <- c(22040, 22042, 22041, 22039, 22038,
                        22037, 22036, 22035, 22034, 22033,
                        22031, 22032, 22030, 22028, 22029,
                        22134, 22133, 22132, 22131, 22130,
                        22129, 22128, 22127, 22126, 22125,
                        22124, 22123,
                        22134:22141)
baseUrlWebApi1 <- Sys.getenv("baseUrlUnsecure")

# get cohorts from one webapi
webApi1Cohorts <- ROhdsiWebApi::getCohortDefinitionsMetaData(baseUrl = baseUrlWebApi1) %>%
        dplyr::filter(.data$id %in% cohortIdsInWebApi1) %>% 
  dplyr::mutate(baseUrl = baseUrlWebApi1)

baseUrlWebApi2 <- Sys.getenv("baseUrlAtlasOhdsiOrg")
bearerToken <- "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjb2hvcnRkaWFnbm9zdGljc0BnbWFpbC5jb20iLCJleHAiOjE2MjAwNDI4Mjl9.QUNh57xaW9xExggsCK_1MioPapJGy0iGs-mON_S_uuwucKn3ZpHf_DD4v8cAhxD4eGMLVgfM3JmGYK5LvFrGBA"
ROhdsiWebApi::setAuthHeader(baseUrl = baseUrlWebApi2, authHeader = bearerToken)
cohortIdsInWebApi2 <- c(340,	349,	386,	347,	402,	385,	346,	343,	405,	335,	339,	345,	406,	411,	381)
webApi2Cohorts <- ROhdsiWebApi::getCohortDefinitionsMetaData(baseUrl = baseUrlWebApi2) %>% 
  dplyr::filter(.data$id %in% cohortIdsInWebApi2) %>% 
  dplyr::mutate(baseUrl = baseUrlWebApi2)

studyCohorts <- dplyr::bind_rows(webApi1Cohorts, webApi2Cohorts)
# compile them into a data table
cohortDefinitionsArray <- list()
for (i in (1:nrow(studyCohorts))) {
        cohortDefinition <-
                ROhdsiWebApi::getCohortDefinition(cohortId = studyCohorts$id[[i]],
                                                  baseUrl = studyCohorts$baseUrl[[i]])
        cohortDefinitionsArray[[i]] <- list(
                id = i,
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


specifications <- list(studyCohorts = studyCohorts,
              cohortDefinitionsArray = cohortDefinitionsArray,
              specifications = specifications,
              hydraSpecificationFromFile = hydraSpecificationFromFile)

saveRDS(object = specifications, file = 'specifications.rds')
##############################################################
##############################################################
######       Build, install and execute package           #############
##############################################################
##############################################################
##############################################################
