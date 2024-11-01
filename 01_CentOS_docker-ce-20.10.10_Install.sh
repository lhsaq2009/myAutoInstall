#!/bin/bash

# ----------------------------------------------------------------------
# 01、准备工作：系统工具 & 软件源信息
# ----------------------------------------------------------------------

sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# cat /etc/yum.repos.d/docker-ce.repo

# ----------------------------------------------------------------------
# 02、社区版 CE ( Community Edition ) 和 企业版 EE ( Enterprise Edition )
# ----------------------------------------------------------------------

sudo yum -y install docker-ce-20.10.10                      # 安装指定版本

  # yum list docker-ce.x86_64 --showduplicates | sort -r    # 查看版本列表
  # sudo yum -y install docker-ce --allowerasing            # 安装最新版本
  #                               --allowerasing 解决 CentOS Stream release 8 软件包冲突，若其它版本报错就去掉

sudo systemctl enable docker && systemctl daemon-reload     # 开机启动
sudo systemctl start docker                                 # 启动服务
sudo systemctl status docker.service                        # 查看状态

docker version && docker info                               # 查看版本和信息