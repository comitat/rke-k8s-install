#!/bin/bash
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*  
sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.dCentOS-* 
sudo yum update -y     
sudo yum install epel-release -y 
sudo yum update -y
dnf install screen mc htop -y