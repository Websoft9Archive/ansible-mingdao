# More

Each of the following solutions has been proved to be effective and we hope it can give you help.

## Configuration 

Refer to the official docs: https://www.rabbitmq.com/configure.html

## Binding Domain

The precondition for binding a domain is that MingDao can accessed by domain name.

When there is only one website on the server, you can visit the website without binding domain. While considering the server security and subsequent maintenance, **Binding Domain** is necessary.

Steps for binding MingDao domain are as follows:

1. Connect your Cloud Server;
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx),and change the **server_name**'s value to your domain name.
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # change it into your domain name
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

1. log in the MingDao backend, open 【Manage】>【Staff】 and find the user account, of which you want to change password;

2. start to change the password.

### Forgot Password

Try to retrieve your password through e-mail when forgot it.

Follow the steps below:

1. complete [SMTP setting](/solution-smtp.md);

2. open
