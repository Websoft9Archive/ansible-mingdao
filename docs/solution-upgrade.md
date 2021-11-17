# Update & Upgrade

To update and upgrade is one of the main task for system maintenance. Like buildings without maintenance for a long time, programs without upgrading will age faster, lose functionality until they are unavailable.

Get to know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Patching operating system is **Updating**, while Ubuntu16.04 to Ubuntu18.04 means **Upgrading**.
- MySQL5.6.25 to MySQL5.6.30 means **Updating**, yet MySQL5.6 to MySQL5.7 means **Upgrading**.

Maintenance for MingDao includes the following two tasks.

- Update system (Operating System and Runtime) 
- Upgrade MingDao

## Update System 

Run a command to complete updating the system:

``` shell
#For Ubuntu&Debian
sudo apt update && apt upgrade -y

#For Centos&Redhat
sudo yum update -y --skip-broken
```
> This deployment package is pre-configured with a scheduled task for automatic updating. If you want to remove the automatic updating, please delete the corresponding Cron.

## Upgrade MingDao

Refer to the official docs: [Mingdao upgrade](https://docs.pd.mingdao.com/deployment/docker-compose/standalone/upgrade.html)

> You should complete an image or snapshot backup for instance before upgrade