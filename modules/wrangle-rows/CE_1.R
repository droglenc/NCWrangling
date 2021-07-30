library(tidyverse)

B <- data.frame(student=1:5,
                name=c("Jamila","Frank","Rose","Courtney","Lavelle"),
                year=c("JR","SR","SR","SO","JR"),
                pretest=c(84,76,65,85,81),
                posttest=c(91,88,77,86,91))

B %>% filter(year=="JR")
B %>% filter(year!="JR")
B %>% filter(year %in% c("JR","SR"))
B %>% filter(pretest>81)
B %>% filter(pretest>=81)
B %>% filter(pretest<81)
B %>% filter(pretest<=81)
B %>% filter(year=="JR",pretest>81)
B %>% filter(pretest<=70|pretest>=85)

IL <- readxl::read_excel(file.path("..","..","resources","data","InchLakeTags.xlsx"),
                         sheet="data") %>%
  pivot_wider(names_from=recap_time,values_from=c(sDate,tl,w)) %>%
  mutate(delta_t=sDate_1-sDate_0,
         delta_tl=tl_1-tl_0,
         delta_w=w_1-w_0) %>%
  relocate(starts_with("delta"),.after=tag) %>%
  arrange(delta_t)
IL

ps <- IL %>% filter(species=="Pumpkinseed")
ps

psbg <- IL %>% filter(species %in% c("Bluegill","Pumpkinseed"))
unique(psbg$species)

bkc13 <- IL %>% filter(species=="Black Crappie",tl_0>13)
bkc13

lmb1 <- IL %>% filter(species=="Largemouth Bass",tl_1>14,delta_t>3*365)
lmb1

qbs20 <- readxl::read_excel(file.path("..","..","resources","data","QBS_2020.xlsx"),
                          skip=1) %>%
  select(-(15:18)) %>%
  rename(Att=Att...7,Yds=Yds...9,TD=TD...12,
         Yds_per_att=`Y/A`,AdjYds_per_Att=`AY/A`)

tmp <- qbs20 %>% filter(G>10)
summary(tmp$G)

pwr5 <- qbs20 %>% filter(Conf %in% c("ACC","Big 12","Big Ten","Pac-12","SEC"))
unique(pwr5$Conf)

tmp <- pwr5 %>% filter(Att>400)
summary(tmp$Att)

tmp <- qbs20 %>% filter(!Conf %in% c("ACC","Big 12","Big Ten","Pac-12","SEC"),
                      Pct>45,Pct<60)
unique(tmp$Conf)
summary(tmp$Pct)

qbs19 <- readxl::read_excel(file.path("..","..","resources","data","QBS_2019.xlsx"),
                          skip=1) %>%
  select(-(15:18)) %>%
  rename(Att=Att...7,Yds=Yds...9,TD=TD...12,
         Yds_per_att=`Y/A`,AdjYds_per_Att=`AY/A`)

qbs <- bind_rows("2019"=qbs19,"2020"=qbs20,.id="Year")
str(qbs)


# Script created at 2021-07-30 10:40:38
