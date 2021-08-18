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
B2 <- pivot_longer(B,cols=ends_with("test"),values_to="score",names_to="test")
B2

C <- data.frame(county=rep(c("Ramsey","Hennepin","Dakota"),times=3),
                type=rep(c("size","population","established"),each=3),
                info=c(155.78,556.62,569.58,
                       508640,1152425,398552,
                       1849,1852,1849))
C2 <- pivot_wider(C,names_from=type,values_from=info)
C2

WD <- readxl::read_excel(file.path("..","..","resources","data","WIDeer.xlsx"))
WD2 <- pivot_longer(WD,cols=-Country,names_to="year",values_to="harvest")
WD2

IL <- readxl::read_excel(file.path("..","..","resources","data","InchLakeTags.xlsx"),
                         sheet="data")
IL2 <- pivot_wider(IL,names_from=recap_time,values_from=c(sDate,tl,w))
IL2


# Script created at 2021-08-18 14:53:34
