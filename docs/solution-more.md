# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Configuration 

Refer to the official docs: https://docs.pd.mingdao.com

## Binding Domain

The precondition for binding a domain is that MingDao can accessed by domain name.

When there is only one website on the server, you can visit the website without binding domain. While considering the server security and subsequent maintenance, **Binding Domain** is necessary.

Steps for binding MingDao domain are as follows:

1. Connect your Cloud Server;
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx),and change the **server_name** and **proxy_pass** if you want.
   ```text
   server
   {
   listen 80;
   server_name mingdao.yourdomain.com;  # Set your domain
       location / {
        proxy_pass  http://127.0.0.1:8880; # Set your port
   ...
   }
   ```
3. Restart Nginx service
   ```
   sudo systemctl restart nginx
   ```

## Resetting Password

There are two main measures to reset password.

### Changing password

Take the steps below:

1. Log in the MingDao backend, open 【System Setting】 to find the user account, of which you want to change password;

2. Start to change the password.

### Forgot Password

Try to retrieve your password through e-mail when forgot it.

Follow the steps below:

Coming soon...