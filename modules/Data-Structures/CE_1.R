library(tidyverse)

species <- c("Bluegill","Pumpkinseed","Black Crappie","Yellow Perch","Rockbass")
species
class(species)
caught <- c(15L,3L,7L,32L,3L)
caught
class(caught)
cpe <- c(4.5,0.7,1.5,9.1,0.6)
cpe
class(cpe)
happy <- c(TRUE,TRUE,FALSE,TRUE,FALSE)
happy
class(happy)

species[2]
caught[3]
cpe[4]
happy[1]

species[c(3,4)]
caught[c(4,5,1)]

fish <- data.frame(species,caught,cpe,happy)
fish
str(fish)

fish[1,2]
fish[2,3]

fish[2,]

fish[c(2,3),]

fish[,1]
fish[,"species"]
fish$species

students <- data.frame(yr=c("First-Year","First-Year","First-Year","First-Year",
                            "Sophomore","Sophomore","Sophomore",
                            "Junior","Junior","Junior","Junior","Junior",
                            "Senior","Senior"),
                       creds=c(12,14,17,12,
                               15,16,14,
                               13,16,15,15,13,
                               12,17))
students
str(students)


# Script created at 2021-07-22 17:29:57
