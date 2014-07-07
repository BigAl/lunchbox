#!/bin/sh
rpm -Uvh http://mirror.aarnet.edu.au/pub/epel/6/i386/epel-release-6-8.noarch.rpm
yum install -y git python-jinja2 PyYAML
cd /opt
git clone git://github.com/ansible/ansible.git
