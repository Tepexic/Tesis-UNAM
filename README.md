Tesis FI UNAM
=============

Plantilla de Tesis en LaTeX para la Facultad de Ingeniería de la UNAM.

UNAM's College of Engineering Thesis' LaTeX template.

Based on Harish Bhanderi's PhD/MPhil template, then Uni Cambridge (http://www-h.eng.cam.ac.uk/help/tpl/textprocessing/ThesisStyle/).
Corrected and extended in 2007 by Jakob Suckale, then MPI-iCBG PhD programme
and made available through OpenWetWare.org - the free biology wiki
. Adapted to FI-UNAM by Jesús Velázquez & Marco Ruiz.



Lista de paquetes
-----------------

Recomiendo tener la opción "Install packages on the fly" de su distribución de LaTeX, activada. La lista de paquetes usados en la plantilla es:

    \usepackage{amssymb, amsmath, amsbsy, amsfonts}
    \usepackage[utf8]{inputenc}
    \usepackage{listings}
    \usepackage{emptypage}
    \usepackage{caption}
    \usepackage[bf,SL,BF]{subfigure}
    \usepackage{mathdots}
    \usepackage{mathrsfs}
    \usepackage{fancyhdr}
    \usepackage{eucal}
    \usepackage[spanish,mexico]{babel}
    \usepackage{color}
    \usepackage[perpage]{footmisc}
    \usepackage{natbib}
    \usepackage{ifthen}
    \usepackage{multicol}
    \usepackage[nottoc]{tocbibind}
    \usepackage{titlesec}

Compilación
-----------

Por el momento, sólo funciona si compilan con "PDFLaTeX", aún no tiene funcionalidad completa con otros compiladores.


Warnings
--------
Marca varias advertencias al compilar, varias de ellas tienen que ver con que el paquete Blindtext no tiene funcionalidad para la lengua española, este paquete únicamente se usa para rellenar la plantilla con texto de ejemplo, por lo que al remover los comandos \blindtext se corrige.

Si les da una advertencia de referencias no definidas, compilen el archivo "tesis.tex" con BibTeX.

Las adevrtencias de fuera de margen son de la portada.
