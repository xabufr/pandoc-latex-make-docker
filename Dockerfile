FROM schickling/latex

RUN apt-get update && apt-get install -y pandoc make 

WORKDIR /source
CMD make
