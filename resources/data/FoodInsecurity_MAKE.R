surveys <- tibble(surv_num=1:1000,
                  site=rep(c("BRICK","HHS","MMC","BRICK","HHS"),
                           times=c(250,250,100,250,150)),
                  date=rep(c("1-Jul-21","1-Jul-21","1-Jul-21","17-Aug-21","4-Sep-21"),
                           times=c(250,250,100,250,150)),
                  method=sample(c("Drop-Off","Hand-Out"),
                                prob=c(0.9,0.1),size=1000,replace=TRUE))

results <- tibble(surv_num=sample(1000,size=157),
                  age=sample(c("20-39","40-59","60+"),size=157,replace=TRUE),
                  employed=sample(c("no","yes"),prob=c(0.9,0.1),size=157,replace=TRUE),
                  insecure=sample(c("no","yes"),prob=c(0.8,0.2),size=157,replace=TRUE),
                  housing=sample(c("own","rent","homeless"),
                                 prob=c(0.3,0.6,0.1),size=157,replace=TRUE))

write.csv(surveys,"resources/data/FIsurveys.csv",row.names=FALSE,quote=FALSE)
write.csv(results,"resources/data/FIresults.csv",row.names=FALSE,quote=FALSE)
