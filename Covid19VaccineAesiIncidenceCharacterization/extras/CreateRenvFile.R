OhdsiRTools::createRenvLockFile(rootPackage = "Covid19VaccineAesiIncidenceCharacterization",
                                additionalRequiredPackages = c('keyring', "DatabaseConnector","dplyr","lubridate","purrr","ROhdsiWebApi",
                                                               "SqlRender","tidyr"))
renv::activate()
