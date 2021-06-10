# ansible-openstack
## 在/etc/ansible/hosts文件中需要的变量
[compute]
compute01
[controller]
controller01 master=1
controller02 master=0
[all:vars]
admin_segment="192.168.90"
public_segment="10.0.0"
storage_segment="192.168.91"
admin_vip=192.168.90.200
public_vip=10.0.0.200
keystone_password="123456"
rabbitMQ_password= "123456"
mysql_password="123456"
nova_password="123456"
glance_password="123456"
placement_password="123456"
neutron_password="123456"
cinder_password="123456"
yum_ip=10.0.0.73
## 目的
本脚本用于搭建openstack-queens
## 组件
### 基础组件
- galera
- rabbitMQ
- Memcache
- haproxy
- keepalived
- etcd
### openstack组件
- keystone
- glance
- nova-server
- neutron-server
- cinder-controller
- horizon
- cinder
- nova-compute
- neutron-compute
