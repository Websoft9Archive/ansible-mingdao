# CheckList

除了公共测试之外，本产品需根据文档进行如下的个性测试。  
个性测试需遵循文档，如果没有对应的文档，需补充产品文档。

| 组           | 项            | 文档情况 |
| ------------ | ------------- | -------- |
| 初始化安装     |   页面进行初始化操作  | 无       |
| 容器正常运行 | 登陆服务器确认容器状态    | 无       |

具体测试流程如下：
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
