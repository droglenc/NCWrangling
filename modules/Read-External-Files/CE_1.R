library(tidyverse)

df1c <- read_csv(file.path("..","..","resources","data","FishData.csv"))
df1c
str(df1c)

df1e <- readxl::read_excel(file.path("..","..","resources","data","FishData.xlsx"))
df1e
str(df1e)

df2 <- read_csv(file.path("..","..","resources","data","StudentData.csv"))
df2
str(df2)

cdf1 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_1.csv",skip=4)
cdf1
str(cdf1)

cdf2 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_2.csv")
cdf2
str(cdf2)

cdf3 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_3.csv",comment="##")
cdf3
str(cdf3)

cdf4 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_4.csv",na="XXX")
cdf4
str(cdf4)

cdf5 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_5.csv",na=c("NA","NONE"))
cdf5
str(cdf5)

cdf6 <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/ChallengeData_6.csv",na="NONE",skip=6)
cdf6
str(cdf6)

cdf7 <- readxl::read_excel(file.path("..","..","resources","data","ChallengeData.xlsx"),
                           sheet="ChallengeData_6",na="NONE",skip=6)
cdf7
str(cdf7)


# Script created at 2021-07-26 15:11:28
