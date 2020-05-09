#!/bin/sh
cd /mnt
wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip
unzip gradle-3.4.1-bin.zip
wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -xvzf apache-maven-3.3.9-bin.tar.gz

echo -e "export M2_HOME=/mnt/apache-maven-3.3.9" >> /etc/profile
echo -e "export PATH=${M2_HOME}/bin:${PATH}" >> /etc/profile
echo -e "export PATH=$PATH:/mnt/gradle-3.4.1/bin" >> /etc/profile
