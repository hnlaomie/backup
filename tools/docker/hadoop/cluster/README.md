# docker-hadoop-cluster

Set up a basic Hadoop Cluster using Docker.

## Setup

Create the network:

```bash
$ docker network create --gateway 172.19.0.1 --subnet 172.19.0.0/24 dev-net
```
$ Build docker:
```bash
$ docker-compose up --build -d
```
Verify hadoop:
```bash
$ docker-compose exec master bash
# hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.3.jar pi 2 10
```

## References

Primarily this project is forked from [docker-hadoop-cluster](https://github.com/mario2904/docker-hadoop-cluster).
