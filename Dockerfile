FROM schickling/latex

RUN echo deb http://http.debian.net/debian wheezy contrib >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y pandoc make ttf-mscorefonts-installer

WORKDIR /source
CMD make
