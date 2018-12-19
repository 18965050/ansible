#! /usr/bin/bash

# 使用/etc/ansible/hosts
ansible all -m ping

# -i
ansible all -m ping -i [cus_hosts|yml_hosts]

# 显示所有module列表
ansible-doc -l

# doc某个module
ansible-doc -s <module>

# linefile
ansible centOS1 -m lineinfile -a 'path=linefile_test.txt line="test text"'
ansible centOS1 -m lineinfile -a 'path=linefile_test.txt regexp="^line" line="test text" '
# 将Hello ansible,Hiiii替换为Hiiii, 注意backrefs=yes
ansible test70 -m lineinfile -a 'path=/testdir/test regexp="(H.{4}).*(H.{4})" line="\2" backrefs=yes'