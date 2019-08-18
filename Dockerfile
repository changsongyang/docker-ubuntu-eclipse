# 基础镜像
FROM gotoeasy/ubuntu-desktop
# 维护者信息
MAINTAINER gotoeasy <gotoeasy@163.com>

# 安装
RUN apt-get update && apt-get install -y \
    # git
    git \
    # svn
    rabbitvcs-cli rabbitvcs-core rabbitvcs-gedit rabbitvcs-nautilus \
    # openjdk-8-jdk
    openjdk-8-jdk \
    # gradle
    gradle \
    # TODO maven nodejs
    apt-get clean
