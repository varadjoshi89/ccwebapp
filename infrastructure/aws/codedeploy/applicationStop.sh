#!/bin/bash


echo "getting the process id"
PID=`ps -eaf | grep "java -jar /opt/tomcat/apache-tomcat-9.0.27/webapps/demo-0.0.1-SNAPSHOT.war" | grep -v grep | awk '{print $2}'`
echo "process id not empty ? $PID"
if [[ "" !=  "$PID" ]]; then
  echo "Found application running on $PID"
  echo "killing the process to stop application"
  echo "killing $PID"
  kill -9 $PID
fi




