#!/bin/bash -e
echo "================= Installing Cassandra 2.1.1 ==================="
echo "[bintray--apache-couchdb-rpm]
name=bintray--apache-couchdb-rpm
baseurl=http://apache.bintray.com/couchdb-rpm/el7/x86_64/
gpgcheck=0
repo_gpgcheck=0
enabled=1" > /etc/yum.repos.d/bintray-apache-couchdb-rpm.repo
sudo yum -y install couchdb
