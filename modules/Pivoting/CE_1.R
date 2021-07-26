library(tidyverse)

A <- data.frame(dog=1:4,
                breed=c("Sheltie","Black Lab","German Shepherd","Sheltie"),
                height=c(17,18,29,14),
                weight=c(27,45,58,19))
B <- data.frame(student=1:5,
                name=c("Jamila","Frank","Rose","Courtney","Lavelle"),
                year=c("JR","SR","SR","SO","JR"),
                pretest=c(84,76,65,85,81),
                posttest=c(91,88,77,86,91))
C <- data.frame(county=rep(c("Ramsey","Hennepin","Dakota"),times=3),
                type=rep(c("size","population","established"),each=3),
                info=c(155.78,556.62,569.58,
                       508640,1152425,398552,
                       1849,1852,1849))


# Script created at 2021-07-26 10:50:15
