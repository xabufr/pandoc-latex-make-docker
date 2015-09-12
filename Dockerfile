FROM sthysel/latex

RUN echo deb http://http.debian.net/debian jessie contrib >> /etc/apt/sources.list
RUN apt-get update &&\
    apt-get install -y locales pandoc make ttf-mscorefonts-installer dia gnumeric inkscape biber file &&\
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8 && \
    apt-get remove -y locales && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV LANG C.UTF-8
ENV LC_CTYPE C.UTF-8

WORKDIR /source
CMD make
