library(tidyverse)
library(lubridate)

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


# Script created at 2021-08-05 09:48:17
