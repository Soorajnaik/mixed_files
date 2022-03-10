#!/bin/bash
a=`netstat -an | grep 8080 | awk '{print $1}'`
message=`echo "Tomcat Server is not running"`
if [[ $a == "tcp6" ]]
then
	echo "Running"
else
	[ ! -z "$message" ] && curl -X POST -H 'Content-type: application/json' --data "{\"text\": \"${message}\"}" https://hooks.slack.com/services/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
	bash /home/ubuntu/apache-tomcat-9.0.58/bin/catalina.sh start

fi
