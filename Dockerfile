# 基础镜像
FROM gotoeasy/ubuntu-desktop
# 维护者信息
MAINTAINER gotoeasy <gotoeasy@163.com>

ENV MAVEN_HOME="/opt/apache-maven-3.6.1"
ENV GRADLE_HOME="/opt/gradle-5.6"
ENV PATH $PATH:$MAVEN_HOME/bin:$GRADLE_HOME/bin

# 安装
RUN apt-get update && apt-get install -y \
    # git和svn
    git rabbitvcs-cli rabbitvcs-core rabbitvcs-gedit rabbitvcs-nautilus \
    # eclipse
    eclipse && \
    # maven
    wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz -O /tmp/maven.tar.gz -q && \
    tar -xf /tmp/maven.tar.gz -C /opt && \
    rm /tmp/maven.tar.gz && \
    # gradle
    wget http://services.gradle.org/distributions/gradle-5.6-bin.zip -O /tmp/gradle.zip -q && \
    unzip -d /opt /tmp/gradle.zip && \
    rm /tmp/gradle.zip && \
    # nodejs
    apt-get install -y nodejs && \
    apt-get install -y npm && \
    npm install n -g && \
    n stable && \
    npm uninstall n -g && \
    apt-get clean
