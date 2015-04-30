FROM schickling/latex

RUN apt-get update && apt-get install -y pandoc make 

RUN mkdir /source
VOLUME ["/source"]

WORKDIR /source
CMD make
