
rm(list=ls())

#library(devtools)
# devtools::install_github("hadley/dplyr") # not working

library(ggplot2)
library(dplyr)
library(devtools)
install_github("Conte-Ecology/conteStreamTemperature")
library(conteStreamTemperature)

baseDir <- getwd()

dataInDir <- paste0(baseDir, '/dataIn/')
dataOutDir <- paste0(baseDir, '/dataOut/')
dataLocalDir <- paste0(baseDir, '/localData/')

load(paste0(dataOutDir, 'tempDataSync.RData'))

tempDataSync$date <- as.Date(tempDataSync$date, format = "%m/%d/%Y")

plotPredict(observed = tempDataSync, predicted = tempDataSyncS, siteList = "ALL", yearList = "ALL", dir = paste0(dataLocalDir, 'plots/'))