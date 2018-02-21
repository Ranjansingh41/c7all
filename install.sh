#!/bin/bash -e

sudo chmod 1777 /tmp

for file in /c7all/version/*.sh;
do
  . $file
done

mkdir -p /var/lib/neo4j/conf
cd /c7all && cp -rf neo4j-server.properties /var/lib/neo4j/conf/

echo "================= Adding shippable_service ==================="
mkdir -p /usr/local/bin/shippable_services
cp /c7all/services/* /usr/local/bin/shippable_services
mv /usr/local/bin/shippable_services/shippable_service /usr/local/bin/shippable_service

echo "================= Adding packages for shippable_service =================="
yum install nc

echo "================= Cleaning package lists ==================="
yum clean expire-cache
yum autoremove
