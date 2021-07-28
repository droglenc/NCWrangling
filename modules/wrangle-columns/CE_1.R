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

fn <- file.path("..","..","resources","data","FrogsSOEI.xlsx")
nas <- c("*","","NA")
fli <- readxl::read_excel(fn,sheet="LakeInfo",skip=3,na=nas) %>%
  rename(site=`SITE NAME`,type=`D/U`) %>%
  mutate(type=plyr::mapvalues(type,from=c("D","U"),
                              to=c("Developed","Undeveloped")))

ffr <- readxl::read_excel(fn,sheet="FrogResults",skip=3,na=nas) %>%
  rename(site=`SITE NAME`,air_temp=`Air Temp`,water_temp=`H2O TEMP.(F)`) %>%
  select(-COMMENTS) %>%
  mutate(Surveyor=plyr::mapvalues(Surveyor,from=c("P","V"),
                                  to=c("Professional","Volunteer")))

ffr2 <- pivot_longer(ffr,cols=AT:CF,names_to="species",values_to="count") %>%
  mutate(species=plyr::mapvalues(species,
                                 from=c("AT","SP","WF","LP","PF","MF",
                                        "GTF","CTF","GF","BF","CF"),
                                 to=c("American Toad","Spring Peeper",
                                      "Wood Frog","Northern Leopard Frog",
                                      "Pickerel Frog","Mink Frog",
                                      "Eastern Gray Treefrog","Cope's Gray Treefrog",
                                      "Green Frog","American Bullfrog",
                                      "Western Chorus Frog")),
         occurrence=ifelse(count>0,"yes","no")) %>%
  relocate(site)

ffr3 <- left_join(ffr2,fli,by="site") %>%
  relocate(type:pH,.after=site)

ffr3


# Script created at 2021-07-28 16:38:34
