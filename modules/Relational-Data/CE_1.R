library(tidyverse)

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


# Script created at 2021-07-24 12:33:40
