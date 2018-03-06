#!/bin/bash

set -e
set -x

sudo yum -y install http://mirror.karneval.cz/pub/linux/fedora/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm

#https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm

#original link https://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-10.noarch.rpm

sudo sed -i -e 's/^enabled=1/enabled=0/' /etc/yum.repos.d/epel.repo
