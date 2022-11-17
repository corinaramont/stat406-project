# STAT 406 Project Part 2

Instructions are def from Dr. G...

Some helpful resources for **R**:
  * [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf)
  * [R studio cheatsheets](https://rstudio.com/resources/cheatsheets/)
  * [DataCamp getting started with tidyverse](https://www.datacamp.com/community/tutorials/tidyverse-tutorial-r)

Some helpful resources for **Git**:

  * [Happy Git with R](https://happygitwithr.com)
  * [H.Wickham intro to Git and Github with Rstudio](http://r-pkgs.had.co.nz/git.html#git-rstudio)
  
  
## Part 1: R installation

* Install [R from CRAN](https://cran.r-project.org), it is free. If you already have R installed, please check that you have a recent version (at least 3.6.0).

* Install [Rstudio](https://www.rstudio.com/products/rstudio/#Desktop), it is free. If you already have Rstudio installed, please update to the most recent version.


## Part 2: Git installation and configuration
* Install [git](https://git-scm.com). If you use Windows, use [git for Windows](https://gitforwindows.org). In your terminal (Mac OS) or bash (installed with git for Windows), configure Git to recognize you.

`git config --global user.name “First Last"`

`git config --global user.email "email@example.com"`

* It would look like:

`git config --global user.name “Corina Ramont"`

`git config --global user.email "corinaramont@tamu.edu"`


## Part 3: Integration of Git, Github and R

* Create a [Github](https://github.com) account if not yet

* Clone your repository to your local machine using
`git clone address_to_folder` such as for this specific repository:

`git clone https://github.com/corinaramont/stat406-project`

* Open Rstudio and make sure you have the version control enabled, see [Rstudio version control](https://support.rstudio.com/hc/en-us/articles/200532077?version=1.1.463&mode=desktop) for further help.

* Use Rstudio to open the project associated with the local directory. You should see the Git tab appear next to Environment and History consoles which will enable you to do staging, commits, pulls and pushes from within Rstudio. You will make all the changes locally, and only then push them to Github. If you do not see the Git tab, see [Rstudio version control](https://support.rstudio.com/hc/en-us/articles/200532077?version=1.1.463&mode=desktop) for further help. You may have to restart Rstudio to see the changes.
