Title: hive安装
Date: 2014-08-04 21:00
Category: programming
Tags: hive
Author: laomie
Summary: hive安装

环境变量设置
---------------------
在"hduser“用户路径下的".bashrc”里加入以下内容
```bash
export HIVE_HOME='/home/hduser/tools/hive0.13'
export PATH=$PATH:$HIVE_HOME/bin
```

设置mysql，用于保存hive的元数据
----------------------------------
```
create user 'hadoop'@'localhost' identified by 'hadoop';
grant all privileges on *.* to 'hadoop'@'localhost' with grant option;
flush privileges;
create database hadoop2 default character set utf8 default collate utf8_general_ci;
alter database hadoop2 character set latin1;
```

复制mysql驱动，并建相关目录
-----------------------------------------
```bash
mkdir -p $HIVE_HOME/warehouse
mkdir -p $HIVE_HOME/auxlib
cp mysql-connector-java-5.1.31.jar $HIVE_HOME/auxlib
```

新增"conf/hive-site.xml"文件
------------------------------------------------------------------------
```xml
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
<property>
    <name>hive.metastore.schema.verification</name>
    <value>false</value>
</property>
<property>
    <name>javax.jdo.option.ConnectionURL</name>
    <value>jdbc:mysql://localhost:3306/hadoop2?createDatabaseIfNotExist=true</value>
</property>
<property>
    <name>javax.jdo.option.ConnectionDriverName</name>
    <value>com.mysql.jdbc.Driver</value>
</property>
<property>
    <name>javax.jdo.option.ConnectionUserName</name>
    <value>hadoop</value>
</property>
<property>
    <name>javax.jdo.option.ConnectionPassword</name>
    <value>hadoop</value>
</property>
<property>
    <name>hive.metastore.warehouse.dir</name>
    <value>file:/home/hduser1/tools/hive0.13/warehouse</value>
</property>
<property>
    <name>hive.server2.thrift.port</name>
    <value>10000</value>
</property>
<property>
    <name>hive.server2.thrift.min.worker.threads</name>
    <value>5</value>
</property>
<property>
    <name>hive.server2.thrift.max.worker.threads</name>
    <value>500</value>
</property>
<property>
    <name>hive.aux.jars.path</name>
    <value>file:/home/hduser/tools/hive0.13/auxlib</value>
</property>

<!--
<property>
    <name>hive.support.concurrency</name>
    <value>true</value>
</property>
-->

</configuration>

```

hive建表导入数据
-----------------------
```
create table employs(empid int, name string, surname string)
row format delimited
fields terminated by '\t';
load data local inpath '/home/hduser/tools/data/employs.csv' overwrite into table employs;
```

mysql表数据导出csv
--------------------------
```sql
select *
from employs
into outfile '/home/hduser/tools/data/employs.csv'
fields terminated by '\t'
lines terminated by '\n'
```