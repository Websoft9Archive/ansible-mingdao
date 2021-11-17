# 故障处理

此处收集使用 明道云 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 如何查看错误日志？

```
cat /data/mingdao/script/mingdaoyun.log
docker logs $(docker ps | grep mingdaoyun-community | awk '{print $1}')
```

更多与日志香港的操作[参考](https://docs.pd.mingdao.com/deployment/docker-compose/command.html#日志)

#### 明道云服务无法启动？

服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh

# 查看服务状态和日志
systemctl status mingdao
journalctl -u mingdao
```