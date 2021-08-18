---
layout: page
title: Exercise - Groupings
author: Derek H. Ogle
css: "/css/modules.css"
output:
  html_document:
    self_contained: false
    lib_dir: zlibs
---




----

## SNAP History 1970-2019
The [Supplementary Nutrition Assistance Program (SNAP)](https://www.fns.usda.gov/pd/supplemental-nutrition-assistance-program-snap), formerly known as the Food Stamp  Program, provides food assistance to low-income families in the form of a debit card. Data about the program from 1969 to 2019 are in [SNAP_history_1969_2019.csv](https://raw.githubusercontent.com/droglenc/NCWrangling/main/resources/data/SNAP_history_1969_2019.csv). A brief description of each variable in the data set [is here](https://www.kaggle.com/jpmiller/publicassistance) (*you may need to scroll down some*).

Load these data into R and perform the following wranglings:

* Create simpler variable names.
* Remove the data for 1969 (so the first year will be 1970).
* Create a new variable that contains the decade for each observation (e.g., the 1970s decade will contain all years from 1970 to 1979).
* Create a new variable that is the difference between total benefits paid and total costs of the program (construct the difference such that negative numbers represent more costs than benefits paid).



Answer the following questions with the newly wrangled data frame.

1. Summarize the annual average number of participants by decade (*summary should include a measure of center and dispersion*). Comment on any patterns over time.



2. Summarize the annual difference in benefits paid and total costs by decade (*summary should include a measure of center and dispersion*). Comment on any patterns over time.



&nbsp;

## Quarterbacks
[In this exercise](../wrangle-rows/CE_1.html#quarterbacks-ii) you created a data frame of statistics for all NCAA quarterbacks in 2019 and 2020. Get those data for this exercise but reduce it to just those quarterbacks in "Power 5" conferences (as defined [in this exercise](../wrangle-rows/CE_1.html#quarterbacks-i)). Then use those data to perform the following tasks.



1. Construct a data frame that has the sample size and mean passer rating for each conference for each year.



2. Construct a data frame that has the sample and mean passer rating for each conference (across both years).



3. Construct a data frame that has the sample size and mean passer rating for each year (across all five conferences).



4. Construct a data frame that has all of the results from the previous three data frames sorted by year within each conference. [*Hints: (1) Modify the last two data frames so that all three data frames have the same number of variables with the same names. (2) Insert `NA`s for elements that don't exist in the modified final data frame. (3) Your final data frame should look like that below.*]













