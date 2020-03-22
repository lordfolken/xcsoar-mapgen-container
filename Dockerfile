# Creates a mapgen-worker instance for building maps

FROM debian:buster-backports
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt install -y python-cherrypy3 python-genshi p7zip gdal-bin mapserver-bin wget git && apt-get clean 

RUN mkdir /opt/mapgen && git clone https://github.com/XCSoar/mapgen.git /opt/mapgen/
