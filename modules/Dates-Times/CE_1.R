library(tidyverse)
library(lubridate)

knitr::include_graphics("WI_discharge_map.JPG")

wcd <- read_tsv("https://nwis.waterdata.usgs.gov/usa/nwis/uv/?cb_00045=on&cb_00060=on&format=rdb&site_no=040263205&period=&begin_date=2021-01-01&end_date=2021-08-03",
                comment="#")
wcd

wcd %<>%
  slice(-1) %>%
  select(-ends_with("cd"),-site_no) %>%
  rename(discharge=ends_with("00060"),
         precip=ends_with("00045")) %>%
  mutate(datetime=ymd_hm(datetime),
         discharge=as.numeric(discharge),
         precip=as.numeric(precip))
wcd

getwd()


# Script created at 2021-08-05 09:25:11
