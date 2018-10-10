#!/bin/bash
#Setup Postgres on Ubuntu
apt update
apt install -y postgresql postgresql-contrib
echo '******************************************************************'
echo 'Infrastructure challenge postgres component'
echo '******************************************************************'
ps auxw | grep postgres | grep -v grep > /dev/null
if [ $? != 1 ]
	then
		echo 'Starting postgresql server'
	        /etc/init.d/postgresql start
	fi
echo '******************************************************************'	
echo 'Checking postgres status' && /etc/init.d/postgresql status
echo '******************************************************************'
echo 'Postgres should be UP, connect using: sudo -u postgres psql'
echo '******************************************************************'
echo 'Postgres logs: /var/log/postgresql/'
echo '******************************************************************'
tail /var/log/postgresql/postgresql*main.log
echo '******************************************************************'
echo 'END'
