# Initial Installation

If you have completed the MingDao deployment, follow the steps below to start a quick use.

## Preparation

1. Get the **Server's Internet IP** of Server on your Cloud Platform.
2. Check your **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:38881** and is **TCP:8880**allowed.
3. Make a domain resolution on your Cloud Console if you want to use domain for MingDao.

## MingDao Installation Wizard

1. Use local browser to access the URL *http://DNS:38881* or *http://Server's Internet IP:38881* to access installation wizard

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


> More guide about MingDao, please refer to [MingDao Documentation](https://docs.pd.mingdao.com/).

## MingDao Setup wizard

Coming soon...

## Q&A

#### Can't visit the start page of MingDao?

Your TCP:38881 of Security Group Rules is not allowed, so there is no response from Chrome or Firefox.

#### 为什么采用单机部署？

私有部署版虽然是一个单机部署方式，单其内部依然是一个微服务集合，所以为了保证容器内各服务进程的可用性，在容器内部预置了健康检查线程，当某服务出现故障时能自动恢复。

#### 访问地址的端口号可以不用 **8880** 吗？

可以，但需要在云控制台安全组中，检查 **Inbound（入）规则** 下您所使用的端口确保开启