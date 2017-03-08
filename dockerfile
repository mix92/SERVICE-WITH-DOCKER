FROM ubuntu

MAINTAINER armand

RUN apt-get update && apt-get -y install apache && apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
