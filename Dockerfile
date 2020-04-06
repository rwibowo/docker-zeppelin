FROM apache/zeppelin:0.8.2

LABEL maintainer="Rio Wibowo<riowibowo@yahoo.com>"

ENV SPARK_VERSION=2.4.3
ENV HADOOP_VERSION=2.7
ENV SPARK_HOME=/opt/spark

WORKDIR /opt

RUN wget https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
      && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
      && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark \
      && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
      #&& cd /css \
      #&& jar uf /spark/jars/spark-core_2.11-${SPARK_VERSION}.jar org/apache/spark/ui/static/timeline-view.css \
      && cd /

WORKDIR /zeppelin