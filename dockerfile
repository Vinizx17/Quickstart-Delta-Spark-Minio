FROM jupyter/pyspark-notebook:spark-3.5.0

USER root

# Baixar Delta Spark 3.2.0 para Scala 2.13 + conectores S3
RUN wget -P $SPARK_HOME/jars https://repo1.maven.org/maven2/io/delta/delta-spark_2.12/3.2.0/delta-spark_2.12-3.2.0.jar && \
    wget -P $SPARK_HOME/jars https://repo1.maven.org/maven2/io/delta/delta-storage/3.2.0/delta-storage-3.2.0.jar && \
    wget -P $SPARK_HOME/jars https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.4/hadoop-aws-3.3.4.jar && \
    wget -P $SPARK_HOME/jars https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.262/aws-java-sdk-bundle-1.12.262.jar


USER $NB_UID

RUN pip install delta-spark==3.2.0


