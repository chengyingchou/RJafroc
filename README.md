RJafroc-master
========

[![Build Status](https://travis-ci.org/dpc10ster/rjafroc-master.svg?branch=master)](https://travis-ci.org/dpc10ster/rjafroc-master)
[![codecov](https://codecov.io/gh/dpc10ster/rjafroc-master/branch/master/graph/badge.svg)](https://codecov.io/gh/dpc10ster/rjafroc-master)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rjafroc)](https://cran.r-project.org/package=rjafroc)

### What is this repository for? ###

* Modeling, Analysis, Validation and Visualization of ROC/FROC studies
* Extends and replaces Windown version of software (JAFROC: https://www.devchakraborty.com)

### RJafroc code development history ###
* TBA

### How do I get set up? ###

* Clone this repository to a directory anywhere on your computer. On my computer it is in /Users/Dev/Downloads/rjafroc. Rename the folder if necessary to match my example. 
* I find the GitHub desktop app useful in mananging my downloads/uploads from Git.
* Install current versions of R and RStudio.
* Navigate to the rjafroc directory.
* Open RJafroc.Rproj. This will open RStudio. 
* Navigate to File menu (lower-right window) and click on DESCRIPTION file.
* Install all packages listed under Imports, e.g.,    
    openxlsx,
    ggplot2,
    stringr,
    tools,
    utils,
    stats,
    bbmle,
    binom,
    mvtnorm,
    dplyr,
    numDeriv,
    Rcpp
* For example, to install the first two above-listed packages, use the following command at the Console prompt:
   install.packages(c("openxlsx", "ggplot2"))
* Click on Install and Restart (upper right panel). If errors result from missing packages, install those packages
* A successful Install and Restart will result in the following line in the Console window:
  library(RJafroc)
* Thats it! RJafroc has been installed to your computer and is available from any other R project.
* You will not need to access the RJafroc folder again (unless you reinstall a new version of the software). 
* All necessary files of the installation are in a hidden directory that you do not normally need to worry about.
* Create an empty directory, e..g., myProject. In my computer it is in /Users/Dev/Downloads/myProject.
* Starting from RStudio > File > New Project > Existing Directory > myProject > Create Project.
* Oila! You should see myProject.RProj in the Files menu.
* Click on Packages and scroll down to find RJafroc, and check the box next to it. This results in RJafroc being loaded to the current workspace.The following line appears in the Console window (this is the hidden directory referrred to above).
  library("RJafroc", lib.loc="/Library/Frameworks/R.framework/Versions/3.5/Resources/library")
* Click on RJafroc in the packages window. A help window opens up. I find it convenient to put this in its own window by clicking the "out" arrow button (hover message: Show in new window). You can access all documentation from here.
* Preliminary documentation (vignettes) is available at https://dpc10ster.github.io/rjafroc-master/.
* Put your data and other files, if any, in myProject.
* TBA

### Contribution guidelines ###

* Writing tests
  TBA
* Code review
  TBA
* Other guidelines
  TBA

### Who do I talk to? ###

dpc10ster@gmail.com

