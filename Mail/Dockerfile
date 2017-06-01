FROM ubuntu:latest
MAINTAINER Armand

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y rsyslog
RUN apt-get install -y postfix
RUN apt-get install -y dovecot-common dovecot-imapd dovecot-pop3d
RUN apt-get install -y mailutils
RUN apt-get install -y fetchmail

ADD postfix/master.cf /etc/postfix/master.cf
ADD postfix/main.cf /etc/postfix/main.cf
ADD postfix/aliases /etc/aliases
ADD .fetchmailrc /home/armand/.fetchmailrc
ADD dovecot/dovecot.conf /etc/dovecot/dovecot.conf
#ADD dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
#ADD dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
#ADD dovecot/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf
ADD start.sh /start.sh
RUN chmod -R 777 /start.sh

RUN postalias /etc/aliases

VOLUME ["/var/mail","/home/armand"]

#SMTP
EXPOSE 25
EXPOSE 110
#this is the default IMAP non-encrypted port
EXPOSE 143
#This is the default mail submission port
#EXPOSE 587


#CMD ["sh", "-c", service postfix start ; tail -F /var/log/mail.log"]
CMD ["sh", "-c", "/start.sh"]
