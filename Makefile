network:
	docker network create hadoop

datanode:
	docker run --network hadoop --name datanode -it --rm --volume $(shell pwd)/data/datanode:/hadoop/dfs/data --env-file ./hadoop.env bde2020/hadoop-datanode:1.1.0-hadoop2.7.1-java8

namenode:
	docker run --network hadoop --name namenode -it --rm --volume $(shell pwd)/data/namenode:/hadoop/dfs/namenode --env-file ./hadoop.env -e CLUSTER_NAME=test bde2020/hadoop-namenode:1.1.0-hadoop2.7.1-java8
