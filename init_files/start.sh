#! /bin/bash

# start tomcat
/home/phis/tomcat/apache-tomcat-9.0.7/bin/catalina.sh start &

# start mongod
mongod --dbpath /home/phis/db &

# start psql 
service postgresql start &

# change to peer->md5 in /etc/postgresql/9.5/main/pg_hba.conf

