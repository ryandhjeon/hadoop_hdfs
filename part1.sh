#!/bin/sh

# 1. Make a directory named: /activity1/
hdfs dfs -mkdir /activity1/
hdfs dfs -mkdir /activity1/data/

# 2. Put the file RandomText.txt into HDFS as the path: /activity1/data/RandomText.txt
hdfs dfs -put /Workspace/cs6500_sp2021_r02_jeon/RandomText.txt /activity1/data/

# 3. List the contents of the directory /activity1/data/
hdfs dfs -ls /activity1/data/

# 4. Move the file /activity1/data/RandomText.txt to /activity1/data/NotSoRandomText.txt
hdfs dfs -mv /activity1/data/RandomText.txt /activity1/data/NotSoRandomText.txt

# 5. Append the local file RandomText.txt to the end of the HDFS file: /activity1/data/NotSoRandomText.txt
hdfs dfs -appendToFile /Workspace/cs6500_sp2021_r02_jeon/RandomText.txt /activity1/data/NotSoRandomText.txt

# 6. List the disk space used by the directory /activity1/data/
hdfs dfs -du -s -h /activity1/data/

# 7. Put the local file MoreRandomText.txt into HDFS as the path: /activity1/data/MoreRandomText.txt
hdfs dfs -put /Workspace/cs6500_sp2021_r02_jeon/MoreRandomText.txt /activity1/data/MoreRandomText.txt

# 8. Recursively list the contents of the directory /activity1/
hdfs dfs -ls -R /activity1/

# 9. Remove the directory /activity1/ and all files/directories underneath it
hdfs dfs -rm -r /activity1/

