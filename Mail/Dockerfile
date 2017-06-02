FROM ubuntu

MAINTAINER Group_13

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install postfix
RUN apt-get -y install -y nmap
RUN apt-get install -y mailutils

RUN apt-get install -y dovecot-common dovecot-imapd dovecot-pop3d

RUN apt-get -y install vim

ADD postfix/main.cf /etc/postfix/main.cf
ADD postfix/master.cf /etc/postfix/master.cf
ADD postfix/aliases /etc/aliases

ADD dovecot/dovecot.conf /etc/dovecot/dovecot.conf
ADD dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
ADD dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf
ADD dovecot/20-pop3.conf /etc/dovecot/conf.d/20-pop3.conf
ADD dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
ADD dovecot/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf

ADD server.crt /etc/ssl/certs/server.crt
ADD server.key /etc/ssl/private/server.key

VOLUME ["/var/mail"]

ADD script.sh /usr/bin/script.sh
RUN chmod 755 /usr/bin/script.sh

#SMTP
EXPOSE 25
#pop3
EXPOSE 995
#default IMAP 
#EXPOSE 143
#IMAP securely
EXPOSE 993

ENTRYPOINT ["script.sh"]
