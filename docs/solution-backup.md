---
sidebarDepth: 3
---

# Backup & Restore

## Why

Users with experience in Cloud Server operation and maintenance understand the necessity of backup. It's impossible for IT systems to maintain 100% stability for a long time. The truth is that any system may fail, but only the probability of failure and the degree of harm differs.

1. The work of several days has been deleted by mistake. How to restore it?
2. Is it possible to recover the website after it was attacked by hackers?
3. The content of the website has been changed into a mess. Could it be recovered?

When a failure occurs, we may first turn to a professional for help, but unfortunately, some failure cannot be solved as quickly as we expected, and even it's insoluble.

Obviously, a backup is necessary when comes to a failure. The existing backup file helps to repair the failed system, which means the irrecoverable loss can be avoided.

> Remember to develop the habit of backup. It's a great and useful way to help solve failure.

## How

There are four objects on the server for us to back up, including **operating system, environment software, database and application**. Each object may have unpredictable failures that cannot be solved as expected.

We suggest to take the following two necessary backup measures:

### Automation Backups for Instance

To make automation backups for Instance is to use the **Snapshot** or **Cloud Server Backup Service** on your Cloud Platform. A snapshot is a full, read-only copy of a disk, which records the data of the disk. You can take a snapshot of an OS or data disk as a backup, and use it to have a key recovery.

View the following list to understand this kind of backup.

```
- Backup scope: all data on a disk including operating system, software environment, database and applications
- Backup effect: very Good
- Backup frequency: automatic backup per hour/day/week as you need
- Recovery method: one key recovery on Cloud platform
- Skill requirement: very easy 
- Automation or Manual: fully automated backup after setting strategy
```

Different Cloud Platforms' snapshot settings slightly differ. Refer to [Cloud platform backup solution](https://support.websoft9.com/docs/faq/tech-instance.html).

### Manual backup for application

 Manual backups for applications is to achieve a minimized backup scheme by **Exporting source code and database of application**.

 View the following list to understand this kind of backup.

```
- Backup scope: Source code and database of application
- Backup effect: Good
- Backup frequency: You can operate when you need
- Recovery method: Import
- Skill requirement: Easy 
- Automation: manual
```
The general steps to make a manual backup are as follows:

1. Compress and download the entire directory */data/wwwroot* by SFTP.
2. Export LAMP's database by [phpMyAdmin](/admin-mysql.md).
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/phpmyadmin/phpmyadmin-export-websoft9.png)
3. Put the source code file and database file in the same folder, and name it according to the date.
4. Complete a backup.