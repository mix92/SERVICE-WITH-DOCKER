FROM centos:centos7
MAINTAINER Armand

RUN yum update -y
#depot suplémentaire pour permetre la communication entre les différents composants
RUN yum install -y epel-release
RUN yum install -y git kernel-headers gcc gcc-c++ cpp ncurses ncurses-devel libxml2 libxml2-devel sqlite sqlite-devel openssl-devel newt-devel kernel-devel libuuid-devel net-snmp-devel xinetd tar jansson-devel make bzip2 gettext

WORKDIR /tmp
# Pjproject est nécessaire pour exécuter l'astérisque 13
RUN git clone -b pjproject-2.4.5 --depth 1 https://github.com/asterisk/pjproject.git

# Construire le projet
WORKDIR /tmp/pjproject
RUN ./configure --prefix=/usr --libdir=/usr/lib64 --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr 1> /dev/null
RUN make dep 1> /dev/null
RUN make 1> /dev/null
RUN make install
# recharge la config
RUN ldconfig
RUN ldconfig -p | grep pj

ENV AUTOBUILD_UNIXTIME 123124
WORKDIR /tmp

# Téléchargez l'astérisque.
RUN git clone -b certified/13.8 --depth 1 https://gerrit.asterisk.org/asterisk
WORKDIR /tmp/asterisk

# Configure
RUN ./configure --libdir=/usr/lib64 1> /dev/null
# Supprimez l'option de création native
# from: https://wiki.asterisk.org/wiki/display/AST/Building+and+Installing+Asterisk
RUN make menuselect.makeopts
RUN menuselect/menuselect \
  --disable BUILD_NATIVE \
  --enable cdr_csv \
  --enable chan_sip \
  --enable res_snmp \
  --enable res_http_websocket \
  --enable res_hep_pjsip \
  --enable res_hep_rtcp \
  menuselect.makeopts

# Continuez avec une marque standard.
RUN make 1> /dev/null
RUN make install 1> /dev/null
RUN make samples 1> /dev/null
WORKDIR /

# Mettre à jour le nombre maximum de fichiers ouverts
RUN sed -i -e 's/# MAXFILES=/MAXFILES=/' /usr/sbin/safe_asterisk

# Copier les fichiers de configuration dans un répertoire approprié
ADD asterisk/users.conf /etc/asterisk/users.conf
ADD asterisk/sip.conf /etc/asterisk/sip.conf
ADD asterisk/extensions.conf /etc/asterisk/extensions.conf
ADD asterisk/voicemail.conf /etc/asterisk/voicemail.conf
#exposition des ports 
EXPOSE 5060/udp
EXPOSE 5060/tcp
EXPOSE 10001/udp
EXPOSE 10002/udp
EXPOSE 10003/udp
EXPOSE 10004/udp
EXPOSE 10005/udp
EXPOSE 10006/udp
EXPOSE 10007/udp
EXPOSE 10008/udp
EXPOSE 10009/udp

CMD asterisk -f
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Sec




#docker build -t voip .

#docker run --name=voip -d  voip


# _sip._udp IN SRV 2 0 5060 sip.wt13.ephec-ti.be.






#docker exec -ti voip bin/bash
