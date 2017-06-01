#!/bin/bash

#newaliases
service rsyslog start
postfix start
#tail -f /var/log/mail.log
service dovecot start
tail -f /var/log/mail.log
