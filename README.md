# 简介

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/gotoeasy/eclipse)](https://hub.docker.com/r/gotoeasy/eclipse)
[![Image Layers](https://img.shields.io/microbadger/layers/gotoeasy/eclipse)](https://hub.docker.com/r/gotoeasy/eclipse)
[![Image Size](https://img.shields.io/microbadger/image-size/gotoeasy/eclipse)](https://hub.docker.com/r/gotoeasy/eclipse)
[![Docker Pulls](https://img.shields.io/docker/pulls/gotoeasy/eclipse)](https://hub.docker.com/r/gotoeasy/eclipse)

在`gotoeasy/ubuntu-desktop`的基础上，安装`eclipse`开发环境

# 例子
```
// 以后台方式运行容器，指定SSH和VNC端口，默认密码为123456
docker run -d -p 22:22 -p 5900:5900 gotoeasy/eclipse

// 可以指定密码(必须6位以上)及分辨率
docker run -d -p 22:22 -p 5900:5900 -e PASSWD=abcd1234 -e SIZE=1024x768 gotoeasy/eclipse

// 用docker-compose方式启动，参考配置docker-compose.yml
docker-compose up
```

# 内容

- [x] git
- [x] svn
- [x] openjdk-8-jdk
- [x] eclipse
- [x] gradle
- [x] maven
- [x] nodejs

<details>
<summary><strong>gotoeasy/ubuntu-desktop</strong></summary>

- [x] `ubuntu:18.04`
- [x] 用户：`root`
- [x] 默认SSH密码：`123456`
- [x] 默认VNC密码：`123456`
- [x] 预装XRDP，但window的远程桌面连接性能较差所以未启动，需要时自行开启`service xrdp start`，默认端口`3389`
- [x] 预装`wget`、`curl`、`firefox`等少许常用软件
- [x] 时区`Asia/Shanghai`
- [x] 中文桌面环境`xfce`
- [x] 中文输入法
- [x] VNC远程桌面连接时支持和本机之间相互复制粘贴文本
</details>

# 截图
![http://gotoeasy.github.io/screenshots/docker-ubuntu-eclipse/eclipse.jpg](http://gotoeasy.github.io/screenshots/docker-ubuntu-eclipse/eclipse.jpg)
