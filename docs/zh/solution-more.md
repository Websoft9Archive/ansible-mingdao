# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 维护

请参考官方提供的：[《私有版维护文档》](https://docs.pd.mingdao.com/)，包括：短信设置、对象存储设置、网络访问、环境变量、服务管理等

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

明道云 域名绑定操作步骤：

1. 确保域名解析已经生效  

2. 使用 SFTP 工具登录云服务器

3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，根据需要修改 **server_name** 和 **proxy_pass** 的值
   ```text
   server
   {
   listen 80;
   server_name mingdao.yourdomain.com;  # 此处修改为你的域名
       location / {
        proxy_pass  http://127.0.0.1:8880; # 此处修改为你的端口
   ...
   }
   ```

4. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## 重置密码

常用的 明道云 重置密码相关的操作主要有修改密码和找回密码两种类型：

### 修改密码

1. 登录 明道云 后台，依次打开：【系统设置】>【用户管理】，找到所需修改密码的账号对象

2. 开始修改密码

### 找回密码

方案有待完善
