Title: hadoop安装
Date: 2014-07-30 22:30
Category: programming
Tags: hadoop
Author: laomie
Summary: hadoop安装

安装必要的软件
-----------------
安装jdk和openssh并将hadoop解压到相关路径，此处为"/home/hduser/tools/hadoop"

设置用户和组
----------------------
增加"hadoop"组和"hduser“用户
```bash
sudo groupadd hadoop
sudo adduser --ingroup hadoop hduser
(archlinux: sudo seradd -m -g hadoop -s /bin/bash hduser)
sudo passwd hduser
```

ssh设置
----------------------
```bash
su - hduser
ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
```

禁用ipv6
----------------------
在"/etc/sysctl.conf"加入以下内容（注：archlinux为"/etc/sysctl.d/99-sysctl.conf"）
```
#disable ipv6
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```

环境变量设置
---------------------
在"hduser“用户路径下的".bashrc”里加入以下内容
```bash
# Set Hadoop-related environment variables
export HADOOP_PREFIX=/home/hduser/tools/hadoop
export HADOOP_HOME=/home/hduser/tools/hadoop
export HADOOP_MAPRED_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=${HADOOP_HOME}
export HADOOP_HDFS_HOME=${HADOOP_HOME}
export YARN_HOME=${HADOOP_HOME}
export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop
# Native Path
export HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_PREFIX}/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib"
#Java path
export JAVA_HOME='/home/hduser/tools/jdk7'
# Add Hadoop bin/ directory to PATH
export PATH=$PATH:$HADOOP_HOME/bin:$JAVA_PATH/bin:$HADOOP_HOME/sbin
```

建hadoop的数据目录和临时目录
-------------------
```bash
source ~/.bashrc
mkdir -p $HADOOP_HOME/yarn_data/hdfs/namenode
mkdir -p $HADOOP_HOME/yarn_data/hdfs/datanode
mkdir -p $HADOOP_HOME/tmp
```

hadoop配置文件设置
--------------------
1. 为"libexec/hadoop-config.sh"设置"JAVA_HOME"
```bash
export JAVA_HOME='/home/hduser/tools/jdk7'
```

2. 为"etc/hadoop/hadoop-env.sh"设置"JAVA_HOME"
```bash
export JAVA_HOME='/home/hduser/tools/jdk7'
```

3. 设置"etc/hadoop/yarn-site.xml"
```xml
<configuration>
    <!-- Site specific YARN configuration properties -->
    <property>
        <name>yarn.nodemanager.aux-services</name>
        <value>mapreduce_shuffle</value>
    </property>
    <property>
        <name>yarn.nodemanager.aux-services.mapreduce.shuffle.class</name>
        <value>org.apache.hadoop.mapred.ShuffleHandler</value>
    </property>
</configuration>
```

4. 设置"etc/hadoop/core-site.xml"
```xml
<configuration>
    <property>
        <name>fs.default.name</name>
        <value>hdfs://localhost:9000</value>
    </property>
</configuration>
```

5. 设置"etc/hadoop/mapred-site.xml" （注：mapred-site.xml.template生成mapred-site.xml）
```xml
<configuration>
    <property>
        <name>mapreduce.framework.name</name>
        <value>yarn</value>
    </property>
</configuration>
```

6. 设置"etc/hadoop/hdfs-site.xml"
```xml
<configuration>
    <property>
        <name>dfs.replication</name>
        <value>1</value>
    </property>
    <property>
        <name>dfs.namenode.name.dir</name>
        <value>file:/home/hduser/tools/hadoop/yarn_data/hdfs/namenode</value>
    </property>
    <property>
        <name>dfs.datanode.data.dir</name>
        <value>file:/home/hduser/tools/hadoop/yarn_data/hdfs/datanode</value>
    </property>
</configuration>
```

hadoop名称节点格式化
---------------------
```bash
hdfs namenode -format
```

hadoop的启动，停止
--------------------
```bash
start-dfs.sh
start-yarn.sh
stop-yarn.sh
stop-dfs.sh
```
