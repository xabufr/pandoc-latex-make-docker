FROM sthysel/latex

RUN echo deb http://http.debian.net/debian jessie contrib >> /etc/apt/sources.list
RUN apt-get update &&\
    apt-get install -y pandoc make ttf-mscorefonts-installer dia gnumeric inkscape biber &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /source
CMD make
