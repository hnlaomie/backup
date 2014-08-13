# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Set Hadoop-related environment variables
export HADOOP_PREFIX=/home/hduser1/tools/hadoop1.2

# hive
export HIVE_HOME=/home/hduser1/tools/hive0.11

#Java path
export JAVA_HOME='/home/hduser1/tools/jdk7'
# Add Hadoop bin/ directory to PATH
export PATH=$JAVA_HOME/bin:$HIVE_HOME/bin:$HADOOP_PREFIX/sbin:$HADOOP_PREFIX/bin:$PATH
