FROM apache/flink-statefun:3.2.0

ADD flink/modules /opt/statefun/modules
ADD flink/flink-conf.yaml /opt/flink/conf/flink-conf.yaml
