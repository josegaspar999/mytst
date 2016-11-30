@echo off

set file_main=lens_clas
set file_pdf=lens_clas

latex %file_main%
latex %file_main%
bibtex %file_main%
latex %file_main%
bibtex %file_main%
latex %file_main%

dvips %file_main%.dvi
ps2pdf %file_main%.ps %file_pdf%.pdf

pause
