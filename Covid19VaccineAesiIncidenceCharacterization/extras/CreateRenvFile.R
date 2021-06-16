OhdsiRTools::createRenvLockFile(rootPackage = "Covid19VaccineAesiIncidenceCharacterization",
                                additionalRequiredPackages = c('keyring', "DatabaseConnector","dplyr","lubridate","purrr",
                                                               "SqlRender","tidyr"))
renv::activate()