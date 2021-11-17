# Initial Installation

If you have completed the MingDao deployment, follow the steps below to start a quick use.

## Preparation

1. Get the **Server's Internet IP** of Server on your Cloud Platform.
2. Check your **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the **TCP:38881** and is **TCP:8880** allowed.
3. Make a domain resolution on your Cloud Console if you want to use domain for MingDao.

## MingDao Installation Wizard

1. Use local browser to access the URL *http://DNS:38881* or *http://Server's Internet IP:38881* to access installation wizard

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-initial1-websoft9.png)

   > You can set any other port which you want to use

2. Then, go to 【Next】 step, start the initialization (need 3-5 minutes)

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-initial2-websoft9.png)

3. When complete the initialization, then start to **Data installation**

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-install1-websoft9.png)
   
   > You should register from official website to get the credential 

4. At last, **Register the administrator** account

   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-set-admin-websoft9.png)

5. Access the Mingdao's URL (e.g **http://Server's IP:8880**) to login the backend
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-login-websoft9.png)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-main-app-websoft9.png)
    ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/mingdao/mingdao-main-lib-websoft9.png)


> More guide about MingDao, please refer to [MingDao Documentation](https://docs.pd.mingdao.com/).

## MingDao Setup wizard

Coming soon...

## Q&A

#### Can't visit the start page of MingDao?

Your TCP:38881 of Security Group Rules is not allowed, so there is no response from Chrome or Firefox.

#### Can the port number of the access address not need **8880**?

Yes, but you should enable your port at **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud console