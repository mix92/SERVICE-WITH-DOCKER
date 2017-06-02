#!/bin/bash

##service rsyslog start
service postfix start
service dovecot start
##service dovecot start
#tail -f /var/log/mail.log
