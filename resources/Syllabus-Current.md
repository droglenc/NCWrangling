---
layout: page
css: /css/syllabus.css
---

<h1>Wrangling Data in R</h1>

<p style="margin-bottom:0.5cm;"></p>
<figure>
  <img src="../img/horst_monsters_data_wrangling.png" alt="Data Dance" style="display: block; margin-left: auto; margin-right: auto; width: 60%;">
  <figcaption><span style="font-size:50%;">From <a href="https://github.com/allisonhorst" target="_blank">Allison Horst</a></span></figcaption>
</figure>

<p style="margin-bottom:1cm;"></p>


----

## Syllabus Contents

* [Catalog Description](#catalog-description) and [Learning Outcomes](#learning-outcomes)
* [Delivery](#delivery)
* [Assistance](#assistance) and [Accommodations](#accommodations)
* [Grading](#grading) -- [Exercises](#exercises), [Final Project](#final-project), [Incomplete Grades](#note-about-incomplete-grades), and [Academic Alerts](#academic-alerts)
* [Classroom Conduct and Academic Integrity](#classroom-conduct-and-academic-integrity)


----

## Catalog Description

Student will use the “tidyverse” to "wrangle" (i.e., manipulate) data for ease of analysis and visualization. Foundational principles of data structures; reading external files; relational data; selecting, renaming and rearranging variables; filtering, sorting, and isolating observations; summarizing results by groups; and handing dates, times, strings, and factors will be emphasized so that students can work with a wide variety of data formats. Class examples will be drawn from a variety of fields including the environmental, natural resources, and social sciences; business; and sports. Prerequisite is [MTH107](http://derekogle.com/NCMTH107/){:target="_blank"} or instructor's consent after demonstrating a simple familiarity with the R software (instructor can provide preparatory resources).

## Learning Outcomes
<img class="img-right" src="../img/outcomes.jpg" alt="Outcomes">
In this course, you will have the opportunity to:

1. Describe the characteristics of "tidy data."
1. Read external data from a variety of formats.
1. Combine data from tables related by a primary key into a single table.
1. Reorganize data from a "longer" to a "wider" format and vice versa.
1. Select, move, rename, and add variables to an existing data frame.
1. Select, filter, arrange, and append observations to an existing data frame.
1. Summarize data by groups.
1. Properly handle date-time data.
1. Properly create and use factor variables.
1. Properly handle complex strings data.
1. Wrangle personally collected data to a format useful for further analysis or visualization.

While this course does not fulfill any requirements in the Liberal Education for the Environment and Society program it does support the "[c]ommunicate mathematical information ... symbolically, visually ..." outcome.


----

## Delivery
XXX

----

## Assistance
This class will have lots of coding in R. Learning R can be difficult at first — it’s like learning a new language, just like Spanish, French, or Chinese.[^encouragement] Hadley Wickham, chief data scientist at RStudio and author of ggplot2, said this:[^WickhamQuote]

> It’s easy when you start out programming to get really frustrated and think, “Oh it’s me, I’m really stupid,” or, “I’m not made out to program.” But, that is absolutely not the case. Everyone gets frustrated. I still get frustrated occasionally when writing R code. It’s just a natural part of programming. So, it happens to everyone and gets less and less over time. Don’t blame yourself. Just take a break, do something fun, and then come back and try again later.

This cartoon illustrates what Hadley explains and how you may feel at some point this term.[^HorstCredit]

<img src="../img/gator_error.jpg" style="display: block; margin-left: auto; margin-right: auto; width: 80%;">

If you find yourself in this situation follow the advice of Hadley above and Allison below.

<img src="../img/horst_error_tweet.png" style="display: block; margin-left: auto; margin-right: auto; width: 60%;">

This advice is predicated on two things. First, you **start early** enough that you have time to ask for help and wait for a response. Second, that you **will ask for help** when you need it. I am here to help you and I **want** to help you learn. **You can succeed** in this class, especially if you are organized and reach out for help when you have questions or are stuck.

I will, however, not be able to monitor my e-mail constantly during this May term. Thus, please use MSTeams (see quick link on homepage) to ask questions that may be able to be answered by others in class or if the eventual answer might be useful to others in class.[^Rhelp] Please also answer questions posted by others on Teams if you feel that you know the answer. I will make every attempt to check my e-mail and Teams every day in the later afternoons.[^DHOemail] Questions that are specific to you should be sent directly to me.[^email]

If you do ask questions on Teams or directly to me, please include the following items in your question:

1. A clear explanation of the problem, with as much detail as you can offer.
1. Which data you are using. If you are using your own data then please attach the data file.
1. An attachment of your R script so that, with your data, I can re-create your analyses.

Note that you can only include the attachments in direct e-mails to me.

&nbsp;

### Accommodations
I want to create an inclusive and accessible learning environment for those of you that have a condition (e.g., attention, learning, vision, hearing, mental, physical, or other health-related concern) that may require special accommodations. *If you have already established accommodations* with the Office of Accessibility Resources (OAR), please communicate your approved accommodations to me as soon as possible so that we can discuss your needs in this course. If you have a condition that requires accommodations but *you have not yet established services* through OAR, then you should contact Jennifer Newago as soon as possible (Ponzio 230, x1387, or <a href="mailto:accomodations@northland.edu">accomodations@northland.edu</a>). It is the policy and practice of Northland College to create inclusive and accessible learning environments consistent with federal and state law. <a href="https://my.northland.edu/life/be-healthy/accommodations/">More information is available here.</a>

----

## Grading
<img class="img-right" src="../img/grading.jpg">
An overall grade will be computed from your performance on daily exercises (75%) and a final project (25%), which are both described below. Your letter grade will be assigned from your overall percentage (rounded to a whole number) and the table below.

<table class="tg">
  <tr><td></td><td>A 92-100</td><td>A- 90-91</td></tr>
  <tr><td>B+ 87-89</td><td>B  82-86</td><td>B- 80-81</td></tr>
  <tr><td>C+ 77-79</td><td>C  70-76</td><td></td></tr>
  <tr><td>D+ 67-69</td><td>D  60-66</td><td>F   0-59</td></tr>
</table>

### Exercises
Most course modules will have exercises that will be due by XXX.

All exercises should be formatted as described [here](). Each exercise set is worth 10 points and will be graded with a two-part rubric. The first part of the rubric is based on your *completion* of the exercise.

<div class="container-fluid">
  <table class="table table-bordered">
  <thead>
    <tr class="info"><th>5 points</th><th>5-1 points</th><th>0 points</th></tr>
  </thead>
  <tbody>
    <tr><td>All parts of the exercise were completed in full and followed the required homework format.</td><td>Some parts of the exercise were either not attempted or were incomplete. The required format was followed.</td><td>Very little of the exercise was completed or the required format was not followed.</td></tr>
  </tbody>
  </table>
</div>

The second part of the rubric is based on your correctness in performing the work.

<div class="container-fluid">
  <table class="table table-bordered">
  <thead>
    <tr class="info"><th>5 points</th><th>5-1 points</th><th>0 points</th></tr>
  </thead>
  <tbody>
    <tr><td>All or nearly all parts of the exercise were correct.</td><td>Various amounts of the exercise were done incorrectly.</td><td>Very little of the exercise was done correctly.</td></tr>
  </tbody>
  </table>
</div>

**Exercises handed in late may still receive "completeness" points but may not receive any "correctness" points.** Please make every effort to not fall behind by turning in your exercises on time.

&nbsp;

### Final Project

To demonstrate your ability to wrangle data in R, I am asking you to identify data that is of interest to you and wrangle it. **YOU SHOULD SEE ME ABOUT THE SPECIFICS OF THIS PROJECT RELATIVE TO THE DATA THAT YOU ARE INTERSESTED IN.**


Items to be considered when grading your final project are:

* XXX

&nbsp;

#### Note About Incomplete Grades
An incomplete grade will be given ONLY in extreme circumstances that are beyond your control, such as a major illness, and will ONLY be given if you have successfully completed the entire course except for the final exam. This is in accordance with [Northland College policy](https://my.northland.edu/student-policies/academic-policies/#grades){:target="_blank"} (scroll down to "Incomplete Grades").


#### Academic Alerts
<img class="img-right" src="../img/alert.jpg">
As you adjust to college, you may benefit from working with a professional on your organization, motivation, and stress level. If I observe you struggling with the course early in the term then I may file an "Academic Alert" about you. If this happens, you will receive an e-mail from me that explains steps you can take to improve your performance in the course. Our Academic Success Coordinator, Gina Kirsten, will receive the alert and will likely also reach out to you to set up a time to further discuss ways to improve in the course. **Academic Alerts are not punitive**, they are simply an attempt to help you get back on track in this course as soon as possible.

----

## Classroom Conduct and Academic Integrity
<img class="img-right" src="../img/integrity.png" alt="Conduct and Integrity">
I hope that everyone in this class will feel comfortable express themselves, asking questions, and freely participating. Thus, please treat each other with courtesy and respect, and refrain from offensive or inappropriate language during any part of the class. Please do not post non-course related or personal or non-academic material on MSTeams. Issues related to conduct and integrity should be sent directly to me via my email.

Students are expected to submit work which is their own. Plagiarism or cheating will not be tolerated. If either is the case you may have your grade for the assignment lowered or you may fail the course. The [College's Academic Integrity Statement & Policy](https://my.northland.edu/student-policies/academic-policies/#academic-integrity){:target="_blank"} will be followed in this course. Please make sure that you are familiar with its content.

----

### Footnotes

[^encouragement]: The idea for this section came from [Dr. Ted Laderas](https://ready4r.netlify.com/syllabus/).

[^WickhamQuote]: This is from the last question in [this interview](https://r-posts.com/advice-to-young-and-old-programmers-a-conversation-with-hadley-wickham/).

[^HorstCredit]: This cartoon is from [Allison Horst](https://github.com/allisonhorst/stats-illustrations).

[^Rhelp]: There are several students in this course that have used R in previous courses. They should be able to answer R related questions for those of you that are just getting started with R.

[^DHOemail]: I will often check my e-mail more often, but I won't be able to do that on a consistent basis. So, please, do not wait untl the last minute as you may not get an immediate response from me.

[^email]: While I am pretty open-minded and not much of a stickler when it comes to e-mail etiquette, some professors are. And it is always better to send an appropriate rather than an inappropriate e-mail. [Here](https://www.scribendi.com/advice/how_to_email_a_professor.en.html) and [here](https://www.insidehighered.com/views/2015/04/16/advice-students-so-they-dont-sound-silly-emails-essay) are some good suggestions for e-mailing professors.
