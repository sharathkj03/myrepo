#!/bin/bash
echo "deploying war file"
rm -rf hello-world-war
git clone https://github.com/sharathkj03/hello-world-war.git
cd hello-world-war
mvn package
sudo cp -r /target/hello-world-war-1.0.0.war /opt/apache-tomcat-10.0.27/webapps/
sh /opt/apache-tomcat-10.0.27/bin/shutdown.sh
sleep 3
sh /opt/apache-tomcat-10.0.27/bin/startup.sh
