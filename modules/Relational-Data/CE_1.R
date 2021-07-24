library(tidyverse)
library(kableExtra)

A <- data.frame(uniq=c("A13","A15","A15","A16","A16"),
                meas1=c(34,87,65,33,12),
                meas2=c("sun","sun","moon","moon","sun"))
B <- data.frame(uniq=c("A14","A15","A16","A17"),
                meas3=c("am","pm","am","pm"))

knitr::kable(A,align="c",caption="Data frame A") %>%
  kable_classic(full_width=FALSE,html_font="Cambria",position="float_left") %>%
  kable_styling(bootstrap_options=c("hover","condensed","striped")) %>%
  row_spec(0,bold=TRUE)
knitr::kable(B,align="c",caption="Data frame B") %>%
  kable_classic(full_width=FALSE,html_font="Cambria",position="right") %>%
  kable_styling(bootstrap_options=c("hover","condensed","striped")) %>%
  row_spec(0,bold=TRUE)

Z <- inner_join(A,B,by="uniq")

knitr::kable(Z,align="c") %>%
  kable_classic(full_width=FALSE,html_font="Cambria") %>%
  kable_styling(bootstrap_options=c("hover","condensed","striped")) %>%
  row_spec(0,bold=TRUE)

Y <- semi_join(A,B,by="uniq")

knitr::kable(Z,align="c") %>%
  kable_classic(full_width=FALSE,html_font="Cambria") %>%
  kable_styling(bootstrap_options=c("hover","condensed","striped")) %>%
  row_spec(0,bold=TRUE)


# Script created at 2021-07-24 11:54:26
