# Example for Controlling Docker Containers Startup Sequence

## Apache Hadoop Namenode/Datanode

In this example, you can see that deployment of datanode before namenode causes connection problems for datanode.
```
make network
$ make datanode
### Open another terminal
$ make namenode
```

You can see that even after starting namenode, datanode still can not connect to it:
```
(trim)
17/11/01 10:25:11 WARN datanode.DataNode: Problem connecting to server: namenode:9000
(trim)
```

This can be resolved by restarting datanode or ensuring that datanode is started after namenode.
