# [Show-and-Tell Slides](https://csafe-isu.github.io/slides/README.html)

This page contains the links to the weekly updates from students and faculty associated with CSAFE at Iowa State University. Among the purposes of this meeting are:

- Communicate research results.
- Updating group on what you are doing. 
- Roadblocks you have hit.
- Solicit help from colleagues - [Put an issue on Github first](https://help.github.com/articles/creating-an-issue/)! 
- Bring interesting papers to group - Add it to the [Zotero library](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-22.html#23)! 
- Talk about upcoming conferences and deadlines, as well as conferences attended and what the group needs to know about them.
- Share the ideas of a paper you have read.


### Guidelines for discussion

1. **Timeliness**. Be concise and be self-aware. DRY. Stay on Topic. If you know you're going to need more time, tell Guillermo ahead of time. Be willing to give 50-minute seminars on your work if the group is interested. Try to keep your Show-and-Tell slides under 3 minutes. 
2. **Keep each other on task**. Call people out for diverting or having side convos
3. **Pictures over text**. A picture is worth 1,000 words
4. **Remember the 3 Cs**: 
    + **Context**: why are you doing what you're doing? "I'm working on the X project in order to Y" 
    + **Content**: what are you doing? "I wrote X function that does Y" or "I ran a simulation of Z" 
    + **Conclusion**: what did you learn? "This will help me because it..." or "This important because it get us to..."
8. **Be an active participant and listener**! This means:
    + Speaking up (see 2) - Stop being so midwestern
    + Asking questions when something doesn't make sense



### Before adding your slides

1. Make sure that you have a Github account and it is connected to RStudio. If you have not done so, please follow [these excellent instructions](http://happygitwithr.com/rstudio-git-github.html) from Jenny Bryan. RStudio is not required to add your slides, but it might make the process easier.

2. If you are not a collaborator for the [slides repository](https://github.com/CSAFE-ISU/slides/), ask Guillermo or any other CSAFE member to add you to the list.

3. Clone the repo in your local machine with RStudio by creating an RStudio project. See [Section 13.3](http://happygitwithr.com/rstudio-git-github.html) of *Happy Git with R*. 

### Upload your slides

You are expected to add your slides **at least** 20 minutes before every Show-and-Tell.

1. **Pull** Open the RStudio project of the slides repo and click "Pull" in the Git panel within RStudio.

2. **Open slides** Open the RMarkdown file (Rmd) that corresponds to the date within the folder called "02_weekly-updates". For example, "update-2018-08-22.Rmd".

3. **Add images** All the images and attached files should be in a folder with your name within "02_weekly-updates/images". Create your own folder if you have not done it so.

4. **Check packages** Verify that you have installed the following R packages:
  - [`rmarkdown`](https://rmarkdown.rstudio.com/lesson-1.html)
  - [`devtools`](https://www.r-project.org/nosvn/pandoc/devtools.html)
  - [`xaringan`](https://github.com/yihui/xaringan)

5. **Add slides** The first four slides of every Show-and-Tell have instructions, e.g., [on this slides from Aug. 13, 2018](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-13.html#1). Basics of RMarkdowns can be found [here](https://rmarkdown.rstudio.com/authoring_basics.html).

6. **Upload changes** 
  - Save the document. 
  - Click "Knit" to verify that your slides are being properly rendered. This is going to create an HTML file with the same name as the RMarkdown (Rmd), please delete it either within RStudio or directly on your local folder.
  - Go to the Git section within Rstudio and click "Diff", select the Rmd and images that you are adding to the presentation. Do not upload the any HTML file.
  - Type a "Commit message". 
  - Click "Commit" -> "Pull" -> "Push". See Section 15 [of *Happy Git with R*](http://happygitwithr.com/troubleshooting.html#rstudio-is-not-making-certain-files-available-for-stagingcommitting) to solve some of the most common error messages.
 
7. **Creating Github Issues for getting feedback**
  - If there is a topic you'd like feedback on during or after show and tell, create a Github issue on this repo. 
  - If you want to provide feedback outside of the show and tell, comment on the issue. 
  - This is a great way to keep track of everything you've tried so that you don't repeat yourself. 
  - This also allows for greater collaboration opportunities within the group. 
  - Tags also allow for tracking: what project is the issue for? what topics are covered?
  - Use the issue template. 

### **Important remarks about adding slides**

- Add your slides **at least** 20 minutes before the presentation
- Do not add any HTML file created by compiling the slides.
- The process to upload is Pull -> Add Slides -> Commit -> Pull -> Push. Note that you must pull the repo twice: once to get the slides for the current week and the second time to get any material that others have pushed in the meantime. When in doubt, always do: commit, PULL, push. 

### Spring 2019 Slides
January 14: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2019-01-14.html)<br>
January 22: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2019-01-23.html)<br>

### Fall 2018 Slides

August 22: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-22.html)<br>
August 27: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-27.html)<br>
September 03: Labor Day <br>
September 10: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-09-10.html)<br>
September 17: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-09-17.html)<br>
September 24: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-09-24.html)<br>
October 01: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-10-01.html)<br>
October 08: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-10-08.html)<br>
October 15: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-10-15.html)<br>
October 22: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-10-22.html)<br>
October 29: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-10-29.html)<br>
November 05: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-11-05.html)<br>
November 12: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-11-12.html)<br>
November 19: Thanksgiving week<br>
November 26: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-11-26.html)<br>
December 03: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-12-03.html)<br>

### Summer 2018 Slides

June 06: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-06-04.html)<br>
June 13: CSAFE All Hands Meeting <br>
June 18: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-06-18.html)<br>
June 25: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-06-25.html)<br>
July 02: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-07-02.html)<br>
July 09: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-07-09.html)<br>
August 06: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-06.html)<br>
August 13: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-08-13.html)<br>


### Spring 2018 Slides

January 22: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-01-22.html)<br>
January 29: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-01-29.html)<br>
February 5: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-02-05.html)<br>
February 12: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-02-12.html)<br>
February 19: [AAFS](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-02-12.html) meeting week <br>
February 26: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-02-26.html)<br>
March 25: We had visitors<br>
March 12: Spring Break<br>
March 19: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-03-19.html)<br>
March 26: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-03-26.html)<br>
April 2: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-04-02.html)<br>
April 9: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-04-09.html)<br>
April 16: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2018-04-16.html)<br>


### Fall 2017 Slides

August 29: [Tech Tools](https://csafe-isu.github.io/slides/03_tech_tools/techtools-slides.html)<br>
September 03: Most of CSAFE members attended [ICFIS 2017](http://www.cvent.com/events/icfis-2017-international-conference-on-forensic-inference-and-statistics/event-summary-6d357a9583224144866d64f44de367a2.aspx). <br>
September 11: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-09-11.html)<br>
September 18: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-09-18.html)<br>
September 25: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-09-25.html)<br>
October 02: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-10-02.html)<br>
October 09: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-10-09.html)<br>
October 16: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-10-16.html)<br>
October 23: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-10-23.html)<br>
October 30: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-10-30.html)<br>
November 06: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-11-06.html)<br>
November 13: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-11-13.html)<br>
November 20: Thanksgiving week <br>
November 27: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-11-27.html)<br>
December 04: CSAFE open house! <br>
December 11: [Weekly Update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-12-11.html)<br>


### Summer 2017 Slides

May 15: [Intro to working with scans](https://csafe-isu.github.io/slides/01_intro-to-scans/intro-x3p.html): working together, file formats and file access<br>
May 22: [Weekly update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-05-22.html)<br>
May 30: [Weekly update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-05-29.html)<br>
June 20: [Weekly update](https://csafe-isu.github.io/slides/02_weekly-updates/update-2017-06-20.html) 





# Working Group Talks  

Below, you can find slides from talks given at the CSAFE Working/Reading Group  

April 11, 2018: [NIJ Graduate Fellowship Applications (Amy, Nate, and Kiegan)](https://csafe-isu.github.io/slides/04_working-group-talks/NIJ_Graduate_Fellowship_Applications.pdf)<br>

