
FROM ubuntu:15.04
MAINTAINER HE201331@students.ephec.be
RUN apt-get update && apt-get upgrade
RUN apt-get install -y apache2
RUN apt-get install -y php5
RUN apt-get install -y php5-mysql

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

EXPOSE 80

ADD www/www.wt13.ephec-ti.be /var/www/www.wt13.ephec-ti.be
ADD www/b2b.wt13.ephec-ti.be /var/www/b2b.wt13.ephec-ti.be
ADD www/intranet.wt13.ephec-ti.be /var/www/intranet.wt13.ephec-ti.be
ADD httpd.conf /etc/apache2/sites-enabled/000-default.conf
CMD ["apache2ctl", "-D", "FOREGROUND"]
