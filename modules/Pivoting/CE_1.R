library(tidyverse)

A <- data.frame(student=1:5,
                name=c("Jamila","Frank","Rose","Courtney","Lavelle"),
                year=c("JR","SR","SR","SO","JR"),
                pretest=c(84,76,65,85,81),
                posttest=c(91,88,77,86,91))
B <- data.frame(dog=1:4,
                breed=c("Sheltie","Black Lab","German Shepherd","Sheltie"),
                height=c(17,18,29,14),
                weight=c(27,45,58,19))
C <- data.frame(county=rep(c("Ramsey","Hennepin","Dakota"),times=2),
                est=rep(c(1849,1852,1849)),
                type=rep(c("size","population"),each=3),
                info=c(155.78,508640,556.62,1152425,569.58,398.552))


# Script created at 2021-07-26 10:40:28
