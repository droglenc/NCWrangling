library(tidyverse)

wae <- read_csv("https://raw.githubusercontent.com/droglenc/FSAdata/master/data-raw/WalleyeErie2.csv") %>%
  select(-setID,-grid,-mat) %>%
  mutate(loc=plyr::mapvalues(loc,from=c(1,2,3),
              to=c("Toledo-Huron","Huron-Fairport","Fairport-Conneaut")),
         ws=0.00000352*(tl^3.18),
         wr=w/ws*100,
         status=case_when(
           tl<250 ~ "substock",
           tl<380 ~ "stock",
           tl<510 ~ "quality",
           tl<630 ~ "preferred",
           tl<760 ~ "memorable",
           TRUE ~ "trophy"
         )) %>%
  relocate(year) %>%
  relocate(status,.after=tl) %>%
  relocate(ws,wr,.after=w) %>%
  relocate(age,.before=sex)
wae


# Script created at 2021-07-27 18:25:48
