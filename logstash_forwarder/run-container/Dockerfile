# logstash-forwarder
#
# A tool to collect logs locally in preparation for processing elsewhere

FROM      debian:jessie

RUN apt-get update

# install deps
RUN apt-get install -y git golang

# clone logstash-forwarder
RUN git clone git://github.com/elasticsearch/logstash-forwarder.git /tmp/logstash-forwarder
RUN cd /tmp/logstash-forwarder && go build

RUN mkdir /opt/forwarder && cp /tmp/logstash-forwarder/logstash-forwarder /opt/forwarder/logstash-forwarder

RUN rm -rf /tmp/*

COPY config/ /opt/conf/
COPY certs/ /opt/certs/

RUN mkdir /var/log/logstash-forwarder

VOLUME ["/opt/certs"]

CMD /opt/forwarder/logstash-forwarder -config /opt/conf/config.json 2> /var/log/logstash-forwarder/forwarder.log


