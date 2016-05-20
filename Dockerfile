FROM gcr.io/google-samples/cassandra:v8
MAINTAINER Pedro Costa

USER root

COPY config/run.sh /run.sh
COPY config/cassandra.yaml /etc/cassandra/cassandra.yaml

CMD ["/run.sh"]
