# Overall #
A `C++11` compilation error on `Solaris`, which resulted in archival of the previous version on 2019-01-17,
has been corrected (see `devtools::check_rhub` below).

## Test environments ##
### OSX "x86_64-apple-darwin15.6.0", "R version 3.6.1 (2019-07-05)" ###
* `R CMD check` ran with no errors, warnings or notes
### Travis (https://travis-ci.org) ###
* No errors, warnings or notes on `oldrel`,`release` or `developer`. 
### Windows portability ###
* This was tested on https://win-builder.r-project.org 
* Both `release` and `development` versions of `R` generated 1 Note, which was expected, stating that this was a new submission, and that the previous submission had been archived. 
* The `old-release` version generated an additional note stating that the installed size is 6.2Mb, and two sub-directories of 1Mb or more: were identified (`doc`: 2.1Mb and `libs`: 1.7Mb). 
* _We have taken care to minimize file size by compressing all image files used in the vignettes, which we feel make an essential contribution to the usability of this package_.   
### Cross platform portability ###
* This was checked using `devtools::check_rhub()`
* The checks were conducted across 20 platforms implemented in `devtools`
* Most relevant to the error which resulted in archival of the previous version, the check on Solaris (Oracle Solaris 10, x86, 32 bit, R-patched (experimental)) resulted in no errors, warnings or notes.
* A summary of the checks follows
* On 7 platforms the checks ran with no errors, warnings or notes.
* One platform (`Ubuntu Linux 16.04 LTS, R-devel with rchk`) generated an error, which we believe is a false positive, generating the following error message:
<< Function Rcpp::Rcpp_protect(SEXPREC*)
    [PB] has possible protection stack imbalance /opt/R-svn/packages/lib/Rcpp/include/Rcpp/protection/Shield.h:25
>>
flags _every_ function implemented in Cpp as.
** adfjalkfjalkdsfj
** jdflasalkdsfjlkajs
2 Notes (arch 'i386' and arch 'x64') CPU time > 5 s: these examples of maximum likelihood fitting from clinical
      datasets are as minimal as I can make them while illustrating the analytical techniques
   Similar note on Windows Server 2008 R2 SP1, R-devel, 32/64 bit
   In all cases time is still less than 7s
   1 Note on Ubuntu Linux 16.04 LTS, R-release, GCC regarding possibly misspelled words, all FPs
   Debian Linux, R-devel, GCC ASAN/UBSAN: OK
   1 Error on Fedora Linux, R-devel, clang, gfortran: 
      Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
      there is no package called lattice
      I believe this is a false positive as my package does not depend on *lattice*
      See independent check on R-hub builder below, which gives different error

## Reverse dependencies ##
None.

## FAILURE SUMMARY (from last attempted submission) ##
* The error which resulted in archival of the previous submission has been corrected.


## All revdep maintainers were notified of the release on RELEASE DATE. ##
Not applicable.
