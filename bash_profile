# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
     . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

#basic
#export MAVEN_HOME=/home/ocean/app/maven
#export MAVEN_CLASSPATH=/home/ocean/app/maven/bin
#export SCALA_HOME=/scala
export JAVA_HOME=/jdk1.7.0_71

PATH=$PATH:$MAVEN_HOME:$MAVEN_CLASSPATH:$SCALA_HOME:$JAVA_HOME

##################hadoop cluster app ##################

#hadoop
export HADOOP_HOME=/data/services/hadoop-2.7.2
export HADOOP_HDFS_HOME=/data/services/hadoop-2.7.2/share/hadoop/hdfs
export HADOOP_YARN_HOME=/data/services/hadoop-2.7.2/share/hadoop/yarn
export HADOOP_COMMON_HOME=/data/services/hadoop-2.7.2/share/hadoop/common
export HADOOP_CONF_DIR=/data/services/hadoop-2.7.2/etc/hadoop
export HADOOP_CLASSPATH=/data/services/hadoop-2.7.2/bin
export YARN_CONF_DIR=/data/services/hadoop-2.7.2/etc/hadoop


#spark#
export SPARK_EXAMPLES_JAR=/home/ocean/app/spark/lib/spark-examples-1.4.1-hadoop2.6.0.jar
export SPARK_HOME=/home/ocean/app/spark
export SPARK_JAR=/home/ocean/app/spark/lib/spark-assembly-1.4.1-hadoop2.6.0.jar
export SPARK_CLASSPATH=/home/ocean/app/spark/bin


##hive#
export HIVE_HOME=/home/ocean/app/hive
export HIVE_CLASSPATH=/home/ocean/app/hive/bin


#hbase#
export HBASE_HOME=/home/ocean/app/hbase
export HBASE_CLASSPATH=/home/ocean/app/hbase/bin

export HADOOP_CLUSTER=$HADOOP_HOME:$HADOOP_HDFS_

#mahout#
export MAHOUT_HOME=/home/ocean/app/mahout


#jar
export TEST_HOME=/home/ocean/app/hadoop/share/hadoop/yarn/hadoop-yarn-server-tests-2.6.0-cdh5.4.5.jar:$HADOOP_HOME/share/hadoop/yarn/test/*
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

HOME:$HADOOP_YARN_HOME:$HADOOP_COMMON_HOME:$HADOOP_CONF_DIR:$HADOOP_CLASSPATH:$YARN_CONF_DIR:$SPARK_EXAMPLES_JAR:$SPARK_HOME:$SPARK_JAR:$SPARK_CLASSPATH:$HIVE_HOME:$HIVE_CLASSPATH:$MAHOUT_HOME:$TEST_HOME:$HADOOP_COMMON_LIB_NATIVE_DIR:$HADOOP_OPTS

##################hadoop cluster app ##################



export PATH=$PATH:$HADOOP_CLUSTER
export PATH