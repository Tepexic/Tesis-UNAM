::The MIT License (MIT)

::Copyright (c) 2013 Krishna Kumar

::Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

::The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

SET FILENAME=tesis

DEL "%FILENAME%.aux"
DEL "%FILENAME%.bbl"
DEL "%FILENAME%.blg"
DEL "%FILENAME%.d"
DEL "%FILENAME%.fls"
DEL "%FILENAME%.ild"
DEL "%FILENAME%.ind"
DEL "%FILENAME%.toc"
DEL "%FILENAME%.lot"
DEL "%FILENAME%.lof"
DEL "%FILENAME%.idx"
DEL "%FILENAME%.out"
DEL "%FILENAME%.nlo"
DEL "%FILENAME%.nls"
DEL "%FILENAME%.pdf"
DEL "%FILENAME%.ps"
DEL "%FILENAME%.dvi"

pdflatex -interaction=nonstopmode "%FILENAME%.tex"
bibtex "%FILENAME%.aux"
makeindex "%FILENAME%.aux"
makeindex "%FILENAME%.idx"
makeindex "%FILENAME%.nlo" -s nomencl.ist -o "%FILENAME%".nls
pdflatex -interaction=nonstopmode "%FILENAME%.tex"
makeindex "%FILENAME%.nlo" -s nomencl.ist -o "%FILENAME%".nls
pdflatex -interaction=nonstopmode "%FILENAME%.tex"


DEL "%FILENAME%.aux"
DEL "%FILENAME%.bbl"
DEL "%FILENAME%.blg"
DEL "%FILENAME%.d"
DEL "%FILENAME%.fls"
DEL "%FILENAME%.ild"
DEL "%FILENAME%.ind"
DEL "%FILENAME%.toc"
DEL "%FILENAME%.lot"
DEL "%FILENAME%.lof"
DEL "%FILENAME%.idx"
DEL "%FILENAME%.out"
DEL "%FILENAME%.nlo"
DEL "%FILENAME%.nls"


"%FILENAME%.pdf"
