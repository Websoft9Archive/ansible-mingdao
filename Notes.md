## 明道测试说明

明道软件比较特殊，不是websoft9直接研发的开源产品，是作为服务商帮明道公司进行全球分发，其测试流程如下：


1. 通过浏览器访问URL：http://IP:38881，进入首页，并进行初始化系统

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-install1-websoft9.png)

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-install2-websoft9.png)

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-install3-websoft9.png)


![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-install4-websoft9.png)

2. 同时检查容器是否正常启动（两个容器）

```
docker ps
``` 

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-validate1-websoft9.png)

```
cat /data/mingdao/script/docker-compose.yaml
```

![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/mingdao/mingdao-validate2-websoft9.png)
