#FROM ubuntu:xenial-20180808
FROM amaysim-au/alpine-awscli:latest
MAINTAINER Ceaser Larry

RUN apk --update --no-cache add curl
COPY update-route53.sh /usr/bin/update-route53
RUN chmod 775 /usr/bin/update-route53
ENTRYPOINT /usr/bin/update-route53
