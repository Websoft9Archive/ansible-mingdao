# 初始化安装

在云服务器上部署 明道云 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:38881** 和 **TCP:8880** 端口是否开启
3. 若想用域名访问 明道云，请先到 **域名控制台** 完成一个域名解析

## 明道云安装向导

明道云安装向导包含三个过程：初始化、安装数据、设置管理员：

1. 使用本地电脑的浏览器访问网址：*http://服务器公网IP:38881* 进入初始化页面

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-initial1-websoft9.png)

   > 上图中的默认端口 8880 可自行设置其他端口号

2. 设置访问地址后，进入【下一步】，开始初始化（过程持续约 3~5 分钟）

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-initial2-websoft9.png)

3. 初始化完成后，开始**安装数据**

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-install1-websoft9.png)
   
   > 过程中需要到明道云官网注册，申请密钥

4. **注册系统管理员**信息，务必牢记账号密码

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-set-admin-websoft9.png)

5. 访问第1步设置的访问地址（例如：**http://服务器公网IP:8880**），登陆明道云后台 (入口：)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-login-websoft9.png)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-main-app-websoft9.png)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-main-lib-websoft9.png)


> 需要了解更多 明道云 的使用，请参考：[明道云官方文档](https://help.mingdao.com/)

## 明道云入门向导

现在开始针对于如何使用 明道云 传输数据，进行完整的说明：

## 常见问题

#### 浏览器打开IP地址，无法访问 明道云（白屏没有结果）？

您的服务器对应的安全组 38881 端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### 为什么采用单机部署？

私有部署版虽然是一个单机部署方式，单其内部依然是一个微服务集合，所以为了保证容器内各服务进程的可用性，在容器内部预置了健康检查线程，当某服务出现故障时能自动恢复。

#### 访问地址的端口号可以不用 **8880** 吗？

可以，但需要在云控制台安全组中，检查 **Inbound（入）规则** 下您所使用的端口确保开启

#### 服务器重启后，程序打不开？

服务器重启后，明道云容器没有启动，使用下面的命令，启动服务，稍等片刻即可打开

```
cd /data/wwwroot/mingdao/installer/
 ./service.sh restartall

```
#### 服务器重启后，服务器IP地址变化，导致工作流等一些服务无法使用

服务器IP变化后，需要修改 docker-compose 配置：
打开 /data/mingdao/script/docker-compose.yaml，修改 ENV_MINGDAO_HOST 为新的IP，再用重启服务

```
version: '3'

services:
  app:
    image: registry.cn-hangzhou.aliyuncs.com/mdpublic/mingdaoyun-community:2.10.1
    environment:
      ENV_MINGDAO_PROTO: "http"
      ENV_MINGDAO_HOST: "123.57.218.118"  
      ENV_MINGDAO_PORT: "8880"
      COMPlus_ThreadPool_ForceMinWorkerThreads: 100
      COMPlus_ThreadPool_ForceMaxWorkerThreads: 500
    ports:
      - 8880:8880
    volumes:
      - ./volume/data/:/data/
      - ./volume/tmp/:/usr/local/MDPrivateDeployment/wwwapi/tmp/
      - /usr/share/zoneinfo/Etc/GMT-8:/etc/localtime
      - ../data:/data/mingdao/data

  doc:
    image: registry.cn-hangzhou.aliyuncs.com/mdpublic/mingdaoyun-doc:1.2.0
```
