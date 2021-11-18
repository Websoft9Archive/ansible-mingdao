---
sidebarDepth: 3
---

# Parameters

The MingDao deployment package contains a sequence of software (referred to as "components") required for MingDao to run. Below list the important information, the component name, installation directory path, configuration file path, port, version, etc.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

```
CONTAINER ID   IMAGE                                                                   COMMAND                  CREATED       STATUS       PORTS                       NAMES
1100b00c55ec   registry.cn-hangzhou.aliyuncs.com/mdpublic/mingdaoyun-community:2.4.1   "/Housekeeper/main -…"   2 hours ago   Up 2 hours   0.0.0.0:8880->8880/tcp      script_app_1
d6fa950fb107   registry.cn-hangzhou.aliyuncs.com/mdpublic/mingdaoyun-doc:1.2.0         "/bin/sh -c /app/ds/…"   2 hours ago   Up 2 hours   80/tcp, 443/tcp, 8000/tcp   script_doc_1
```

### MingDao

MingDao installation directory:  */data/mingdao*  
MingDao installer directory:  */usr/local/mingdao*  
MingDao volume:  */data/mingdao/script/volume*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*    
Nginx main configuration file: */etc/nginx/nginx.conf*   
Nginx logs file: */var/log/nginx*  
Nginx rewrite rules directory: */etc/nginx/conf.d/rewrite*  
Nginx htpasswd file: */etc/nginx/.htpasswd/htpasswd.conf*  

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| TCP | 38881 | HTTP to access MingDao installer | Required |
| TCP | 8880 | HTTP to access MingDao when installation completed | Optional |
| TCP | 80 | Nginx HTTP | Optional |
| TCP | 443 |  Nginx HTTPS| Optional |

## Version

You can see the version on product pages at Marketplace. However, after being deployed to your server, the components will be updated automatically, resulting in a certain change in the version number. Therefore, run the command on the server to view the exact version number. 

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx  Version
nginx -V

# Docker Version
docker -v

# Mingdao version
docker images
```
