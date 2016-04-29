
devops成本
=================

2016-4-25
-

- ~~机架~~
- ~~头尾设计~~
- ~~修改配置--copy~~
- azikaban
- kebors
- ~~bash_profile4~~


- ~~队列设计~~
- ~~config调优~~a
- sparksql-hive
- phoenix-spark
- jar插件
- 驱动
- 压缩
- 定时维护脚本
- 基本监控：hadoop,spark监控，name-gc监控



-常規使用
--

    256G内存:

    机器系统预留 4g+10g=14G =基础监控+openfalcon +graphite +diamond (忽略) +其他
    namenode+datanode =>2g
    nodemanager resourcemanager =>2G
    regionserver +master=>2G
    ======================20g floor =26G



    230G

    regionserver + nodemanagerresource = 30G +200G

    (SLOT)0.5G*26个map+reduce进程+danode(2G)+regionserver(16G)+tasktraker(2G)+LINUX(4G)=37G<48g

    hadoop org.apache.hadoop.util.NativeLibraryChecker
    adoop checknative

    hadoop jar ../share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.2.jar wordcount input output

