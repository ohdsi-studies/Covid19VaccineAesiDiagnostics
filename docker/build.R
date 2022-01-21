# NOTE: before running this script be sure to set the 
# working directory to the location of this file

bashString <- "cp ../renv.lock ."
system(bashString)

bashstring <- "sudo docker build -t eminty/covid19_vaccine_tts:0.5 ."
system(bashstring)

