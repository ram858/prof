#!/bin/bash
# Update the instance
yum update -y
# Install Maven dependencies
yum install -y java-1.8.0-openjdk-devel
# Download and install Maven
cd /opt
curl -O https://apache.org/dist/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
tar -xf apache-maven-3.8.4-bin.tar.gz
rm apache-maven-3.8.4-bin.tar.gz
ln -s apache-maven-3.8.4 maven
echo "export PATH=/opt/maven/bin:$PATH" >> /etc/profile.d/maven.sh
# Reload the environment variables
source /etc/profile.d/maven.sh
# Verify Maven installation
mvn -version
