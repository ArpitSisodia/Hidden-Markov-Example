## Required library
library(depmixS4)

## data loading-
physician_prescrition_data <-c(12,16,45,45,56,67,78,98,120,124,156)

## model execution-
HMM_model <- depmixS4::depmix(physician_prescrition_data~1, nstates = 2,ntimes=length(physician_prescrition_data))

## model fitting
HMM_fm <- fit(HMM_model)

## Transition probabilties-
HMM_fm@transition

## posterior states-
posterior(HMM_fm)
plot(ts(posterior(HMM_fm)[,1]))

## Emission probabilties-
HMM_fm@response

