Vagrant Elasticsearch, Redis, MongoDB
=================================

Vagrant box to get started quickly with [Elasticsearch](http://www.elasticsearch.org), [Redis](http://redis.io) and [MongoDB](http://www.mongodb.org).

### How to run
* Install [Virtualbox](https://www.virtualbox.org)
* Install [Vagrant](http://www.vagrantup.com)
* `git clone git@github.com:gcarre/vagrant-elasticsearch-redis-mongo.git`
* `vagrant up`

### What it does
It will download [Ubuntu Trusty 14.04](http://releases.ubuntu.com/14.04/) and install Elasticsearch 1.3, and the latest versions of MongoDB and Redis. It then exposes their ports to your host machine: 9200 and 9300 for Elasticsearch, 27017 for MongoDB and 6379 for Redis, so that you can access them as if they were installed on your machine.

