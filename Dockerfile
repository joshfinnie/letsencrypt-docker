FROM ubuntu:trusty

MAINTAINER Josh Finnie <josh@jfin.us>

# Upgrading the new image and installing Git
RUN \
  apt-get -y update && \
  apt-get install -y git

# Cloning the letsencrypt repo
RUN \
  git clone https://github.com/letsencrypt/letsencrypt /letsencrypt

WORKDIR /letsencrypt
VOLUME ["/etc/letsencrypt"]

# Making sure the initial run of letsencrypt-auto is completed on install
RUN \
  cd /letsencrypt && \
  ./letsencrypt-auto --help

CMD ["./letsencrypt-auto", "--help"]
