
source(Sys.getenv("startUpScriptLocation"))  # this sources information for cdmSources and dataSourceInformation.

outputLocation <- "D:\\TwT\\Covid19VaccineAesiIncidenceCharacterization\\Runs"

connectionSpecifications <- cdmSources %>%
  dplyr::filter(sequence == 1) %>%
  dplyr::filter(database == "optum_extended_dod")

dbms <- connectionSpecifications$dbms  # example: 'redshift'
port <- connectionSpecifications$port  # example: 2234
server <- connectionSpecifications$server  # example: 'fdsfd.yourdatabase.yourserver.com'
cdmDatabaseSchema <- connectionSpecifications$cdmDatabaseSchema  # example: 'cdm'
vocabDatabaseSchema <- connectionSpecifications$vocabDatabaseSchema  # example: 'vocabulary'
databaseId <- connectionSpecifications$database  # example: 'truven_ccae'
userNameService <- "OHDSI_USER"  # example: 'this is key ring service that securely stores credentials'
passwordService <- "OHDSI_PASSWORD"  # example: 'this is key ring service that securely stores credentials'

cohortDatabaseSchema <- paste0("scratch_", keyring::key_get(service = userNameService))
# scratch - usually something like 'scratch_grao'

connectionDetails <- DatabaseConnector::createConnectionDetails(dbms = dbms,
                                                                user = keyring::key_get(service = userNameService),
                                                                password = keyring::key_get(service = passwordService),
                                                                port = port,
                                                                server = server)


dataSouceInformation <- getDataSourceInformation(connectionDetails = connectionDetails,
                                                 cdmDatabaseSchema = cdmDatabaseSchema,
                                                 vocabDatabaseSchema = vocabDatabaseSchema)



