#!/usr/bin/env bash

# install repositories
add-apt-repository ppa:webupd8team/java
wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main"
apt-get update

# install JAVA
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install -q -y oracle-java7-installer
apt-get install -q -y oracle-java7-set-default

apt-get install -y elasticsearch
apt-get install -y redis-server
apt-get install -y mongodb-server

# cleanup non used packages
apt-get autoremove -y

cp /vagrant/mongodb.conf /etc/
service mongodb restart

cp /vagrant/redis.conf /etc/redis/
service redis-server restart

cp /vagrant/elasticsearch.yml /etc/elasticsearch
service elasticsearch restart
