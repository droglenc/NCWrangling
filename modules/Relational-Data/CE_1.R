library(tidyverse)

G <- data.frame(id=c("A","C","C","B"),
                val=c(1,2,3,4))
H <- data.frame(id=c("E","A","B","B","D"),
                ue=c(9,8,7,6,5))

inner_join(G,H,by="id")
left_join(G,H,by="id")
right_join(G,H,by="id")
full_join(G,H,by="id")
semi_join(G,H,by="id")
anti_join(G,H,by="id")

A <- data.frame(uniq=c("A13","A15","A15","A16","A16"),
                meas1=c(34,87,65,33,12),
                meas2=c("sun","sun","moon","moon","sun"))
B <- data.frame(uniq=c("A14","A15","A16","A17"),
                meas3=c("am","pm","am","pm"))

Z <- inner_join(A,B,by="uniq")

Y <- semi_join(A,B,by="uniq")

X <- right_join(A,B,by="uniq")

W <- anti_join(A,B,by="uniq")

V <- full_join(A,B,by="uniq")

U <- left_join(A,B,by="uniq")

T <- left_join(B,A,by="uniq")

fn <- file.path("..","..","resources","data","Skiers.xlsx")
racers <- readxl::read_excel(fn,sheet="skiers")
races <- readxl::read_excel(fn,sheet="races")
race1 <- readxl::read_excel(fn,sheet="race19")
race2 <- readxl::read_excel(fn,sheet="race20")

bothraces <- inner_join(race1,race2,by="bibID")
bothraces

bothraces <- right_join(racers,bothraces,by="bibID")
bothraces

race19only1 <- semi_join(race1,race2,by="bibID")
race19only1

race19only2 <- anti_join(race1,race2,by="bibID")
race19only2

race19ers <- left_join(race1,race2,by="bibID")
race19ers

master <- full_join(race1,race2,by="bibID")
master

fn <- file.path("..","..","resources","data","FoodInsecuritySurvey.xlsx")

surv <- readxl::read_excel(fn,sheet="Surveys")
res <- readxl::read_excel(fn,sheet="Results")

FIS1 <- inner_join(surv,res,by="surv_num")
FIS1
FIS2 <- right_join(surv,res,by="surv_num")
FIS2


# Script created at 2021-07-24 16:26:03
