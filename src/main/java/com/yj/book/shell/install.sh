#!/bin/bash

tar -zxvf postgresql-14.1.tar.gz

mkdir /test/pgsql


cd /test/postgresql-14.1
  ./configure --prefix=/test/pgsql/install --without-readline --without-zlib --with-uuid=ossp
./configure --with-libxml --with-ossp-uuid --with-libs=/opt/postgresql/9.6/lib --with-includes=/opt/postgresql/9.6include

#初始化数据库
su postgres
/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data/


vim /usr/local/pgsql/data/postgresql.conf
listen_addresses = 'localhost'
listen_addresses = ‘*’


vim /usr/local/pgsql/data/pg_hba.conf
host all all 0.0.0.0/0 trust

#启动
pg_ctl start -l /usr/local/pgsql/log/pg_server.log


