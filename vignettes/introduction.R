## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----templates, collapse=TRUE, eval=TRUE---------------------------------
library(prodigenr)
path <- tempdir()
template_list

## ----manuscriptProj------------------------------------------------------
#  prodigen('manuscript', 'ManuscriptName', path, git.init = TRUE)

## ----shell_command, echo=FALSE-------------------------------------------
#  # run only on computer
#  cat(paste(system(
#      paste0('cd ', path, '/ManuscriptName && tree -a -I .git --dirsfirst -v'),
#      intern = TRUE
#      ), collapse = '\n'),
#      file = 'vignettes/file_structure.txt')
#  unlink(file.path(path, 'ManuscriptName'), recursive = TRUE)

## ----file_structure, echo=FALSE, eval=TRUE, results='markup', comment=''----
cat(readLines('file_structure.txt', warn = FALSE), sep = '\n')

## ---- eval=FALSE---------------------------------------------------------
#  prodigen('slides', 'PresentationName', '~/path')
#  prodigen('abstract', 'Name', '.') # Current directory

## ------------------------------------------------------------------------
#  prodigenr::include_rfigshare_script()
#  prodigenr::include_mit_license()
#  prodigenr::include_strobe()

