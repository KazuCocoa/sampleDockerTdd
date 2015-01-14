FROM ubuntu:14.04
MAINTAINER kazuaki

EXPOSE 22

ENV TEST=test
WORKDIR /root

CMD ["/usr/bin/wc", "--help"]