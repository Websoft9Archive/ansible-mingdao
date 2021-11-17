# SMTP

Sending mail is a common feature for MingDao. With a large number of users' practice and feedback, only one way is recommended, that is, using the **third-party SMTP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it has great difficulty in maintenance.

Taking **SendGrid's SMTP Service** as an example, refer to the following steps to configure sending mail:

1. Log in SendGrid console, and prepare your SMTP settings.
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smtp
   SMTP password: #fdfwwBJ8f    
   ```
2. Log in MingDao Console and go to 【Email settings】 at 【System settings】
   ![Mingdao SMTP](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-smtp-websoft9.png)

3. SMTP completed  

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*
