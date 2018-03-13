#
#  docker run -d  --net=host -v /netservices/BIND/etc/:/etc/named  --name named isc-bind
# 
# 
FROM centos:centos7

MAINTAINER A B a.b@to.infn.it

RUN yum -y update  \
#
 && yum -y install \
           bind \
           GeoIP \
           net-tools \
           which

RUN rndc-confgen -a -u named -r /dev/urandom

EXPOSE 53/udp 53/tcp

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
