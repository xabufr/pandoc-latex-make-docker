FROM ubuntu:15.04
CMD apt-get update && apt-get install -y pandoc make

VOLUME ["/source"]
WORKDIR /source
CMD make
