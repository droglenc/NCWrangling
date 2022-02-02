library(tidyverse)
library(lubridate)
library(magrittr)

knitr::include_graphics("WI_discharge_map.JPG")

bbr <- read_tsv("https://nwis.waterdata.usgs.gov/usa/nwis/uv/?cb_00060=on&format=rdb&site_no=04025500&period=&begin_date=2020-01-01&end_date=2020-12-31",
                comment="#") %>%
  slice(-1) %>%
  select(-ends_with("cd")) %>%
  rename(discharge=ends_with("00060")) %>%
  mutate(datetime=ymd_hm(datetime),
         discharge=as.numeric(discharge))

bad <- read_tsv("https://nwis.waterdata.usgs.gov/usa/nwis/uv/?cb_00060=on&format=rdb&site_no=04027000&period=&begin_date=2020-01-01&end_date=2020-12-31",
                comment="#") %>%
  slice(-1) %>%
  select(-ends_with("cd")) %>%
  rename(discharge=ends_with("00060")) %>%
  mutate(datetime=ymd_hm(datetime),
         discharge=as.numeric(discharge))

dschrg <- bind_rows(bad,bbr) %>%
  mutate(river=ifelse(site_no=="04027000","Bad","Bois Brule"),
         mon=month(datetime,label=TRUE)) %>%
  select(-site_no) %>%
  relocate(river)

dschrg %>%
  group_by(river,mon) %>%
  summarize(mean=mean(discharge)) %>%
  ungroup() %>%
  pivot_wider(names_from=river,values_from=mean)

ggplot(data=dschrg,mapping=aes(x=datetime,y=discharge,color=river)) +
  geom_line() +
  scale_y_continuous(name="Discharge (cf/s)",trans="log10",
                     expand=expansion(mult=c(0,0.05))) +
  scale_x_datetime(breaks="months",date_labels="%e-%b") +
  theme_bw() +
  theme(axis.title.x=element_blank()) +
  labs(title="Bad and  Bois Brule Rivers, Northern WI",
       subtitle="2020 Stream Discharge",
       caption="source: USGS")

ps <- readxl::read_excel(file.path("..","..","resources","data",
                         "Phenology Slovenia 2004-2019.xlsx")) %>%
  rename(station=`Station name`,
         species=Species,
         start=`Date SOS`,
         end=`Date EOS`) %>%
  select(-`Station code`) %>%
  mutate(start=mdy(start),
         end=mdy(end),
         SOS=yday(start),
         EOS=yday(end),
         season=time_length(start %--% end,unit="day"))

fs <- ps %>%
  filter(species=="Fagus sylvatica") %>%
  mutate(station=fct_reorder(station,SOS,.fun=mean,na.rm=TRUE))

fs_sum <- fs %>%
  group_by(station) %>%
  summarize(start=mean(SOS,na.rm=TRUE),
            end=mean(EOS,na.rm=TRUE),
            season=mean(season,na.rm=TRUE))

fs_sum %<>%
  mutate(dstart=as_date(start),
         dend=as_date(end))

ggplot(fs_sum) +
  geom_segment(mapping=aes(x=dstart,xend=dend,y=station,yend=station),
               size=2,color="gray30") +
  geom_point(mapping=aes(x=dstart,y=station),
             size=2,shape=21,fill="white",color="black") +
  geom_point(mapping=aes(x=dend,y=station),
             size=2,shape=21,fill="white",color="black") +
  scale_x_date(name=element_blank(),date_breaks="month",date_labels="%b",
               limits=ymd("1970-Jan-1","1970-Dec-31"),
               expand=expansion(mult=0)) +
  theme_minimal() +
  labs(title="Mean Fagus sylvatica leaf-out season",
       subtitle="By station in Slovenia, 2004-2019",
       source="https://doi.org/10.6084/m9.figshare.14829081.v1")


# Script created at 2021-11-07 17:14:40
