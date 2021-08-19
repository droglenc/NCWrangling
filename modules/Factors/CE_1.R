library(tidyverse)
library(magrittr)
library(lubridate)

lake <- read_csv("https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/LakeActivity.csv")

unique(lake$activity)

lk_sum1 <- lake %>%
  group_by(activity) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum1

lake %<>% 
  mutate(activity2=fct_infreq(activity))

lk_sum2 <- lake %>%
  group_by(activity2) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum2

lake %<>% 
  mutate(activity3=fct_lump_n(activity2,n=7))

lk_sum3 <- lake %>%
  group_by(activity3) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum3

lake %<>% 
  mutate(activity4=fct_lump_prop(activity2,prop=0.05))

lk_sum4 <- lake %>%
  group_by(activity4) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum4

lake %<>% 
  mutate(activity5=fct_lump_min(activity2,min=10))

lk_sum5 <- lake %>%
  group_by(activity5) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum5

lake %<>% 
  mutate(activity6=fct_collapse(activity,
                                Silent=c("Relaxing / entertaining",
                                         "Fishing - open water",
                                         "Nature viewing",
                                         "Canoeing / kayaking / stand-up paddleboard",
                                         "Ice fishing",
                                         "Swimming"),
                                `Non-silent`=c("Pontooning",
                                               "Motor boating",
                                               "Water skiing / tubing",
                                               "Jet skiing",
                                               "Snowmobiling / ATV")))

lk_sum6 <- lake %>%
  group_by(activity6) %>%
  summarize(freq=n()) %>%
  mutate(perc=freq/sum(freq)*100)
lk_sum6

qbs20 <- readxl::read_excel(file.path("..","..","resources","data","QBS_2020.xlsx"),
                          skip=1) %>%
  select(-(15:18)) %>%
  rename(Att=Att...7,Yds=Yds...9,TD=TD...12,
         Yds_per_att=`Y/A`,AdjYds_per_Att=`AY/A`)

unique(qbs20$Conf)

qbs20 %<>%
  mutate(Conf2=fct_collapse(Conf,"Other"=c("MAC","Ind","Sun Belt",
                                           "CUSA","MWC","American")),
         Conf2=fct_relevel(Conf2,"Other",after=Inf))

qb_sum1 <- qbs20 %>%
  group_by(Conf2) %>%
  summarize(n=n(),
            mean=mean(Rate),
            sd=sd(Rate))
qb_sum1

qbs20 %<>%
  mutate(Conf3=fct_rev(fct_reorder(Conf2,Rate,.fun=mean)),
         Conf3=fct_relevel(Conf3,"Other",after=Inf))

qb_sum2 <- qbs20 %>%
  group_by(Conf3) %>%
  summarize(n=n(),
            mean=mean(Rate),
            sd=sd(Rate))
qb_sum2

qbs20 %<>%
  mutate(Conf4=fct_recode(Conf3,"Atlantic Coast Conference"="ACC",
                          "Southeast Conference"="SEC"))

qb_sum3 <- qbs20 %>%
  group_by(Conf4) %>%
  summarize(n=n(),
            mean=mean(Rate),
            sd=sd(Rate))
qb_sum3

bad <- read_tsv("https://nwis.waterdata.usgs.gov/usa/nwis/uv/?cb_00060=on&format=rdb&site_no=04027000&period=&begin_date=2020-01-01&end_date=2020-12-31",
                comment="#") %>%
  slice(-1) %>%
  select(-ends_with("cd")) %>%
  rename(discharge=ends_with("00060")) %>%
  mutate(datetime=ymd_hm(datetime),
         mon=month(datetime,label=TRUE),
         discharge=as.numeric(discharge))

bad_sum1 <- bad %>%
  group_by(mon) %>%
  summarize(n=n(),
            mean=mean(discharge),
            sd=sd(discharge))
bad_sum1 

bad %<>%
  mutate(season=fct_collapse(mon,
                             "Winter"=c("Jan","Feb","Mar"),
                             "Spring"=c("Apr","May","Jun"),
                             "Summer"=c("Jul","Aug","Sep"),
                             "Fall"=c("Oct","Nov","Dec")),
         season=fct_relevel(season,"Winter","Spring","Summer","Fall"))

bad_sum2 <- bad %>%
  group_by(season) %>%
  summarize(n=n(),
            mean=mean(discharge),
            sd=sd(discharge))
bad_sum2


# Script created at 2021-08-19 08:11:06
