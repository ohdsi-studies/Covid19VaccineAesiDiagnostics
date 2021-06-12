#BearerToken <- ""
baseUrlWebApi <- Sys.getenv("baseUrlAtlasOhdsiOrg")

ROhdsiWebApi::setAuthHeader(baseUrl = baseUrlWebApi, authHeader = BearerToken)

studyCohorts <- ROhdsiWebApi::getCohortDefinitionsMetaData(baseUrl = baseUrlWebApi) %>% 
  dplyr::filter(stringr::str_detect(string = .data$name, pattern = 'TwT') |
                  stringr::str_detect(string = .data$name, pattern = 'covid vaccine') |
                  .data$id %in% c(331:349, 380:411, 426:427, 550:554))

# compile them into a data table'\\

outcomeRef2 <- list()
cohortDefinitionsArray <- list()
for (i in (1:nrow(studyCohorts))) {
  print(i)
  name <- studyCohorts$name[[i]]
  outcomeRef <- readr::read_csv(file = "Covid19VaccineAesiIncidenceCharacterization\\inst\\settings\\OutcomeRef.csv", col_types = readr::cols())
  
  outcomeRef2[[i]] <- outcomeRef[1,] %>% 
    dplyr::mutate(outcomeId = studyCohorts$id[[i]],
                  outcomeCohortDefinitionId = studyCohorts$id[[i]],
                  outcomeName = studyCohorts$name[[i]],
                  fileName = paste0(studyCohorts$id[[i]], ".sql"))
    
  cohortDefinition <-
    ROhdsiWebApi::getCohortDefinition(cohortId = studyCohorts$id[[i]],
                                      baseUrl = baseUrlWebApi)
  cohortDefinitionJson <- cohortDefinition$expression %>% RJSONIO::toJSON(digits = 23, pretty = TRUE)
  cohortDefinitionSql <- ROhdsiWebApi::getCohortSql(cohortDefinition = cohortDefinition$expression, 
                                                    baseUrl = baseUrlWebApi,generateStats = FALSE)
  
  SqlRender::writeSql(sql = cohortDefinitionJson, 
                      targetFile = file.path("Covid19VaccineAesiIncidenceCharacterization\\inst\\cohort\\outcome", paste0(studyCohorts$id[[i]], ".sql")))
  SqlRender::writeSql(sql = cohortDefinitionSql, 
                      targetFile = file.path("Covid19VaccineAesiIncidenceCharacterization\\inst\\sql\\sql_server\\outcome", paste0(studyCohorts$id[[i]], ".sql")))
}

outcomeRef2 <- dplyr::bind_rows(outcomeRef2) %>% 
  dplyr::mutate(fileName = paste0(.data$outcomeId, ".sql"))

readr::write_excel_csv(x = outcomeRef2, file = "Covid19VaccineAesiIncidenceCharacterization\\inst\\settings\\OutcomeRef.csv", na = '', append = FALSE)
