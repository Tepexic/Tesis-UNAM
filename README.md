Tesis UNAM
=============

Plantilla de Tesis en LaTeX para las facultades de la UNAM.

UNAM's Thesis' LaTeX template.

Based on Harish Bhanderi's PhD/MPhil template, then Uni Cambridge (http://www-h.eng.cam.ac.uk/help/tpl/textprocessing/ThesisStyle/).
Corrected and extended in 2007 by Jakob Suckale, then MPI-iCBG PhD programme
and made available through OpenWetWare.org - the free biology wiki. Adapted to UNAM by Jesús Velázquez


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

Portada
-----------
Existen dos versiones de la portada, una en color negro y otra azul y oro. Para escoger la portada en negro, hay que descomentar la línea:
    \portadafalse
y comentar la línea 
    \portadatrue
    
Los datos van en los siguientes campos:
    \title{Título de la tesis}
    \author{Nombres Apellido1 Apellido2} 
    \facultad{Facultad de Algunacosa}                
    \degree{Ingenierx/Licenciadx en Algo}
    \director{Dr. Emmet L. Brown}               
    \degreedate{2112}                           
    \lugar{Ciudad de México}       
    
    
  
Y el escudo de la facultad va en el campo \escudofacultad{ } donde se debe incluir la ruta y el nombre de la imagen correspondiente. Actualmente, la carpeta Latex/Classes/Escudos cuenta con los siguientes escudos:

    "fi_azul" Facultad de ingenieria en color azul
    "fi_negro" Facultad de ingenieria en color negro
    "fc_azul" Facultad de ciencias en color azul
    "fc_negro" Facultad de ciencias en color negro

Se agradecen sus aportaciones de escudos a jebus.velazquez@gmail.com o a este Git.



Opciones para el posgrado
--------
Para empezar, se debe tener el comando

    \posgradotrue

La portada tiene dos nuevos elementos: programa y campo, rellenar al gusto

    \programa{Programa de Maestría y Doctorado en XXX}
    \campo{Campo de Conocimiento}
    
El siguiente comando activa la opción de poner hasta dos tutores que conformen el comité tutor

    \comitetrue
    \ctutoruno{Nombre 1}
    \ctutoruno{Nombre 2}
    
Para los datos del jurado asignado, se tiene

    \presidente{Nombre}
    \secretario{Nombre}
    \vocal{Nombre}
    \supuno{Suplente 1}
    \supdos{Suplente 2}
    \institucion{el lugar donde se hizo la tesis}
    
    
Compilación
-----------
Por el momento, sólo funciona si compilan con "PDFLaTeX", aún no tiene funcionalidad completa con otros compiladores.
    
Warnings
--------
Marca varias advertencias al compilar, varias de ellas tienen que ver con que el paquete Blindtext no tiene funcionalidad para la lengua española, este paquete únicamente se usa para rellenar la plantilla con texto de ejemplo, por lo que al remover los comandos \blindtext se corrige.

Si les da una advertencia de referencias no definidas, compilen el archivo "tesis.tex" con BibTeX.

Las adevrtencias de fuera de margen son de la portada.
