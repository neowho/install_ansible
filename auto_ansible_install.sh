#!/bin/sh
:<<\EOF
About configuration file scan
Script author is neo_will
EOF
#let's begin
ansilbe

if [ $? -eq 0 ]    #检查上一命令是否执行成功，如不等于0，则进行安装
then
        echo 'ansible existing'
else
        #设置EPEL仓库
        rpm -iUvh http://dl.Fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
        
        #使用yum安装Ansible
        yum -y install ansible
        
        #安装完成后，检查ansible版本
        vers=`ansible --version`
        echo "ansible install complete, version=$vers"
fi
