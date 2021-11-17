---
sidebarDepth: 3
---

# Parameters

The MingDao deployment package contains a sequence of software (referred to as "components") required for MingDao to run. Below list the important information, the component name, installation directory path, configuration file path, port, version, etc.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

### MingDao

MingDao installation directory:  */data/rabbitmq*  
MingDao logs directory:  */data/logs/rabbitmq*  

### Apache

Apache vhost configuration file: */etc/httpd/conf.d/vhost.conf*    
Apache main configuration file: */etc/httpd/conf/httpd.conf*   
Apache logs file: */var/log/httpd*  
Apache module configuration file: */etc/httpd/conf.modules.d/00-base.conf*   

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite*  
Nginx htpasswd file: */etc/nginx/.htpasswd/htpasswd.conf*  

### MySQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*    

MySQL Web Management refer to [MySQL Management](/admin-mysql.md)

### MySQL on Docker

MySQL data directory: */data/db/mysql/data*  
MySQL log directory: */data/db/mysql/logs*  

###  phpMyAdmin

phpMyAdmin is a visual MySQL management tool, is installed based on docker.  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### PostgreSQL

PostgreSQL data directory: */data/postgresql/pgdata*  
PostgreSQL configuration directory: */data/postgresql/config*  
PostgreSQL logs directory: */data/postgresql/log*  

> The above list is the directory created by soft link, please query more file path information through commands like `locate pg_hba.conf`

### PostgreSQL on Docker

PostgreSQL data directory: */data/db/postgresql/data*  
PostgreSQL data directory: */data/db/postgresql/logs*  

### pgAdmin

pgAdmin is a visual PostgreSQL management tool, is installed based on docker. 

pgAdmin directory：*/data/apps/pgadmin*  
pgAdmin docker compose file：*/data/apps/pgadmin/docker-compose.yml* 

### MongoDB

MongoDB data directory: */var/lib/mongodb*  
MongoDB Configuration File:  */etc/mongod.conf*  
MongoDB logs File:  */var/log/mongodb*  

### adminMongo

adminMongo is a visual MongoDB management tool, is installed based on docker.  

adminMongo directory：*/data/apps/adminmongo*  
adminMongo docker compose file：*/data/apps/adminmongo/docker-compose.yml* 

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

### Redis

Redis configuration file: */etc/redis.conf*  
Redis data directory: */var/lib/redis*  
Redis logs file: */var/log/redis/redis.log*

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 80 | HTTP to access MingDao | Required |
| TCP | 443 | HTTPS to access MingDao | Optional |
| TCP | 3306 | Remote to access MySQL | Optional |
| TCP | 9003 | Use port to access MingDao | Optional |
| TCP | 9002 | MingDao Document Server on Docker | Optional |
| TCP | 9090 | phpMyAdmin on Docker | Optional |


## Version

You can see the version on product pages at Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Java version
java -v

# Docker Version
docker -v

# erlang  Version
yum info erlang
apt show erlang

# MingDao version
rabbitmqctl status | grep MingDao*
```
