## Run analysis, write model results

## Before:
## After:

library(TAF)

mkdir("model")


load("bootstrap/data/sam_fit/fit.RData")

retro_fit <- stockassessment::retro(fit, year = 2017:2021)


save(fit, file = "model/fit.RData")
save(retro_fit, file = "model/retro_fit.RData")


# # Si tenemos un ejecutable que correr para que corra el modelo, lo hacemos a través de la función system. La idea es que haya un software.bib file, que incluya su descarga, o que indique que está. Después copiar a la carpeta model, y después lo que sigue
# setwd('model')
# system('ss_win.exe', intern = TRUE)
# setwd('..')
