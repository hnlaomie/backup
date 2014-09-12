# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Set Hadoop-related environment variables
export HADOOP_PREFIX=/home/hduser/tools/hadoop2.5
export HADOOP_HOME=/home/hduser/tools/hadoop2.5
export HADOOP_MAPRED_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=${HADOOP_HOME}
export HADOOP_HDFS_HOME=${HADOOP_HOME}
export YARN_HOME=${HADOOP_HOME}
export HADOOP_YARN_HOME=${HADOOP_HOME}
export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop
export YARN_CONF_DIR=${HADOOP_CONF_DIR}
# Native Path
export HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_PREFIX}/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib"

# hive
export HIVE_HOME=/home/hduser/tools/hive0.13

#Java path
export JAVA_HOME='/home/hduser/tools/jdk7'

#scala
export SCALA_HOME=/home/hduser/tools/scala2.10

#spark
export SPARK_HOME=/home/hduser/tools/spark0.9
export SHARK_HOME=/home/hduser/tools/shark0.9

# Add Hadoop bin/ directory to PATH
export PATH=$JAVA_HOME/bin:$HIVE_HOME/bin:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX/bin:$SCALA_HOME/bin:$SHARK_HOME/bin:$PATH
