FROM taig/latex

RUN echo deb http://http.debian.net/debian jessie contrib >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y pandoc make ttf-mscorefonts-installer dia gnumeric inkscape

WORKDIR /source
CMD make
