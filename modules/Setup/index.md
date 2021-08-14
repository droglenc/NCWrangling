---
layout: page
title: Class Organization
css: /css/modules.css
---

<div class="panel-group-ILOs">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h2 class="panel-title">
        <a data-toggle="collapse" href="#ILOs">Learning Outcomes <small>(click to see)</small></a>
      </h2>
    </div>
    <div id="ILOs" class="panel-collapse collapse">
      <div class="panel-body">
XXX
<p>After completing this module, you should be able to ...</p>

<ol>
  <li>XXX</li>
</ol>
      </div>
    </div>
  </div>
</div>

----

## Preparation for Class

* Look around the [class webpage](https://derekogle.com/NCGraphing/) (*should bookmark/favorite this page*)
* [Setup MSTeams](Setup_MSTeams){:target="_blank"}
* Read the [Reading](http://derekogle.com/BookWrangling/preparation.html){:target="_blank"} and do the following as described there.
  * Install and setup your R and RStudio.
  * Install the `tidyverse`, `magrittr`, and `lubridate` packages.
  * Prepare an RStudio project (with a corresponding folder).
  * Download and modify the Notebook template.

----

## Exercise
* Download one of the files below to your computer, load it into RStudio, and show the `str()`ucture of the data.frame object. [*Hint: use `read.csv()` like you did in your other statistics courses at Northland.*] Use an ordered list to answer these three questions -- (1) What is the name of your data frame object in R, (2) how many rows are there in the data frame, and (3) what is the name of the first variable in the data frame.
  * [Loon1.csv](https://raw.githubusercontent.com/droglenc/NCData/master/Loon1.csv) ... biological data for Common Loons (*Gavia immer*) from around North America.
  * [WalleyeErie2.csv](https://raw.githubusercontent.com/droglenc/FSAdata/master/data-raw/WalleyeErie2.csv) ... biological data for Walleye (*Sander vitreus*) from Lake Erie.
  * [NCAAF19_QBS.csv](https://raw.githubusercontent.com/droglenc/NCData/master/NCAAF19_QBS.csv) ... statistics for college football quarterbacks from the 2019-20 season.
  * [StateOfWolf.csv](https://raw.githubusercontent.com/droglenc/NCData/master/StateOfWolf.csv) ... attitude data towards Gray Wolves (*Canis lupus*) in Michigan, Minnesota, and Wisconsin.
* Create another section in your document and repeat the question above with a different data file.
* Compile your document to an HTML file and turn it into me via e-mail.
