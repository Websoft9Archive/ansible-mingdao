# Troubleshooting

If you're having trouble with running MingDao, here is a quick guide to solve most common problems.

> Most faults about the Instance is closely related to the Instance provider, Cloud Platform. Provided you're sure the fault is caused by Cloud Platform, refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html).

#### How can I check the error logs?

```
cat /data/mingdao/script/mingdaoyun.log
docker logs $(docker ps | grep mingdaoyun-community | awk '{print $1}')
```

More logs please refer to official docs: [Mingdao Logs](https://docs.pd.mingdao.com/deployment/docker-compose/command.html#日志)

#### Can't start MingDao service?

Insufficient disk space and memory, incorrect configuration file may cause the failure to start the service. 

It is recommended to first check through the command.

```shell
# restart MingDao service
systemctl status mingdao
journalctl -u mingdao

# view disk space
df -lh

# view memory rate
free -lh
```