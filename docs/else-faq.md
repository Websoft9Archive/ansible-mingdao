# FAQ

#### Does Mingdaoyun support multiple languages?

Chinese and English

#### If there is no domain name, can I deploy MingDao?

Yes, access MingDao by *http://Server's Internet IP:38881*.

#### What method does this Mingdao deployment?

Docker

#### Is it possible to modify the source path of MingDao?

No.

#### How to change the permissions of filesystem?

Change owner(group) or permissions as below:

```shell
chown -R nginx.nginx /data/wwwroot
find /data/wwwroot -type d -exec chmod 750 {} \;
find /data/wwwroot -type f -exec chmod 640 {} \;
```

#### What's the difference between Deployment and Installation?

- Deployment is a process of installing and configuring a series of software to the server in a different order, which is a complex system engineering.  
- Installation is the process of starting the initial wizard after the application is prepared.  
- Installation is simpler than deployment. 

#### What's Cloud Platform?

Cloud platform refers to platform manufacturers that provide cloud computing services, such as: **Azure, AWS, Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud**, etc.

#### What is the difference between Instance, Cloud Server, Virtual Machine, ECS, EC2, CVM, and VM?

No difference. All refer to cloud servers. They are the different terminology used by manufacturers.
