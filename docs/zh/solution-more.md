# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 配置

参考官方方案：https://www.rabbitmq.com/configure.html

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

明道云 域名绑定操作步骤：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name rabbitmq.yourdomain.com;  # 此处修改为你的域名
   ...
   }
   ```
4. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## 重置密码

常用的 明道云 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

1. 登录 明道云 后台，依次打开：【Manage】>【Staff】，找到所需修改密码的账号对象
  ![明道云 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/rabbitmq/rabbitmq-modifypw001-websoft9.png)

2. 开始修改密码
  ![明道云 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/rabbitmq/rabbitmq-modifypw002-websoft9.png)

### 找回密码

如果用户忘记了密码，建议通过邮件的方式找回密码：

1. 完成 [SMTP 设置](/zh/solution-smtp.md)

2. 打开 明道云 登录页面，点击【Forgot】开始通过邮件找回密码
  ![Ghost 找回密码](https://libs.websoft9.com/Websoft9/DocsPicture/en/rabbitmq/rabbitmq-forgetpw-websoft9.png)
