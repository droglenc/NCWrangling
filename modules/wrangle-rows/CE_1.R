library(tidyverse)

B <- data.frame(student=1:5,
                name=c("Jamila","Frank","Rose","Courtney","Lavelle"),
                year=c("JR","SR","SR","SO","JR"),
                pretest=c(84,76,65,85,81),
                posttest=c(91,88,77,86,91))

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


# Script created at 2021-07-28 21:12:55
