library(tidyverse)
library(magrittr)

SNAP <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/SNAP_history_1969_2019.csv") %>%
  rename(year=`Fiscal Year`,participation=`Average Participation`,
         bens_pers=`Average Benefit Per Person`,ttl_bens=`Total Benefits(M)`,
         other_costs=`Other Costs`,ttl_costs=`Total Costs(M)`) %>%
  slice(-1) %>%
  mutate(decade=paste0(floor(year/10)*10,"s"),
         diff=ttl_bens-ttl_costs)
SNAP

sum_part <- SNAP %>%
  group_by(decade) %>%
  summarize(n=n(),
            mean=mean(participation),
            sd=sd(participation),
            min=min(participation),
            max=max(participation))
sum_part

sum_bcdiff <- SNAP %>%
  group_by(decade) %>%
  summarize(n=n(),
            mean=mean(diff),
            sd=sd(diff),
            min=min(diff),
            max=max(diff))
sum_bcdiff  

qbs20 <- readxl::read_excel(file.path("..","..","resources","data","QBS_2020.xlsx"),
                          skip=1) %>%
  select(-(15:18)) %>%
  rename(Att=Att...7,Yds=Yds...9,TD=TD...12,
         Yds_per_att=`Y/A`,AdjYds_per_Att=`AY/A`)

qbs19 <- readxl::read_excel(file.path("..","..","resources","data","QBS_2019.xlsx"),
                          skip=1) %>%
  select(-(15:18)) %>%
  rename(Att=Att...7,Yds=Yds...9,TD=TD...12,
         Yds_per_att=`Y/A`,AdjYds_per_Att=`AY/A`)

qbs <- bind_rows("2019"=qbs19,"2020"=qbs20,.id="Year") %>%
  filter(Conf %in% c("ACC","Big 12","Big Ten","Pac-12","SEC"))
str(qbs)

sum_year_by_conf <- qbs %>%
  group_by(Year,Conf) %>%
  summarize(n=n(),
            valid_n=sum(!is.na(Rate)),
            mean=mean(Rate,na.rm=TRUE))
sum_year_by_conf

sum_by_conf <- qbs %>%
  group_by(Conf) %>%
  summarize(n=n(),
            valid_n=sum(!is.na(Rate)),
            mean=mean(Rate,na.rm=TRUE))
sum_by_conf

sum_by_year <- qbs %>%
  group_by(Year) %>%
  summarize(n=n(),
            valid_n=sum(!is.na(Rate)),
            mean=mean(Rate,na.rm=TRUE))
sum_by_year

sum_by_conf %<>% mutate(Year=NA)
sum_by_year %<>% mutate(Conf=NA)

sum_qbs <- bind_rows(sum_year_by_conf,sum_by_conf,sum_by_year) %>%
  arrange(Conf,Year) %>%
  relocate(Year)

sum_qbs

df <- tibble(group=rep(c("A","B"),c(4,5)),
             value=c(10,22,14,18,22,25,28,21,24))

sum1 <- df %>%
  mutate(diff=value-mean(value),
         diffsq=diff^2)
sum1

sd1 <- sum1 %>%
  summarize(n=n(),
            sumdiffsq=sum(diffsq)) %>%
  mutate(var=sumdiffsq/(n-1),
         sd=sqrt(var))
sd1

sum2 <- df %>%
  group_by(group) %>%
  mutate(diff=value-mean(value),
         diffsq=diff^2)
sum2

sd2 <- sum2 %>%
  summarize(n=n(),
            sumdiffsq=sum(diffsq)) %>%
  mutate(var=sumdiffsq/(n-1),
         sd=sqrt(var))
sd2


# Script created at 2021-08-18 19:46:28
