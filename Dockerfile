FROM nginx:latest
ADD nginx/conf/site.conf /etc/nginx/conf.d/default.conf
COPY app/* /usr/share/nginx/html/

FROM php:fpm
RUN apt-get update
RUN pear channel-discover pear.nrk.io
RUN pear install nrk/Predis