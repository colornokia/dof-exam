FROM php:fpm
COPY app/* /site/
RUN apt-get update
RUN pear channel-discover pear.nrk.io
RUN pear install nrk/Predis
