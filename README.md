pandoc-latex-make-docker
======

## Description

Based on [schickling/latex](https://github.com/schickling/dockerfiles/tree/master/latex).

Additionnal package installed:

 * Pandoc
 * Make
 * Ms fonts (contrib repository enabled)
 * Dia for diagram generation (can convert dia diagram to latex file)
 * Gnumeric for spreadsheet convertion to latex longtable

## How-to use

Write a Makefile to build your pandoc-based project and run:

```bash
docker run --rm -it -v $(pwd):/source xabufr/pandoc-latex-make-docker
```

You can also create a `build.sh` like this:

````bash
#!
DIR=$( cd -P `dirname "$0"` && pwd )
sudo docker run --rm -it -v $DIR:/source xabufr/pandoc-latex-make-docker
```
