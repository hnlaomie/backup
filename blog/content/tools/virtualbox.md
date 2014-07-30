Title: virtualbox tips
Date: 2014-07-26 21:30
Category: tools 
Tags: virtualbox, tuntap, ubuntu
Author: laomie
Summary: virtualbox使用技巧


virtualbox Bridged Adapter
================

linux 主机设置
---------
建立虚拟网卡

    $ sudo ip tuntap add mode tap tap0
    $ sudo ip link set tap0 up
    $ sudo route add -host 192.168.1.26 dev tap0
    $ sudo route add -host 192.168.1.27 dev tap0
    $ sudo route add -host 192.168.1.28 dev tap0

查看网卡

    $ sudo ip addr show

删除虚拟网卡

    $ sudo ip tuntap delete mode tap tap0

设置脚本

    #!/bin/bash
    # tap-setup.sh
    tap_up(){
        sudo ip tuntap add mode tap tap0
        sudo ip link set tap0 up
        sudo route add -host 192.168.1.21 dev tap0
        sudo route add -host 192.168.1.22 dev tap0
        sudo route add -host 192.168.1.23 dev tap0
    }
    tap_down(){
        sudo route delete -host 192.168.1.21 dev tap0
        sudo route delete -host 192.168.1.22 dev tap0
        sudo route delete -host 192.168.1.23 dev tap0
        sudo ip link set tap0 down
        sudo ip tuntap delete mode tap tap0
    }
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root" 1>&2
        exit 1
    else
        case "$1" in
        start)
            tap_up
            ;;
        stop)
            tap_down
            ;;
        *)
            echo "Usage: $0 {start|stop}"
            ;;
        esac
    fi
    exit 0

ubuntu客户机设置
-----------------
设置静态ip，对”/etc/network/interfaces“做如下修改

    auto eth0
    #iface eth0 inet dhcp
    iface eth0 inet static
    address 192.168.1.26
    netmask 255.255.255.0
    gateway 192.168.1.1

设置dns，对“/etc/resolvconf/resolv.conf.d/base”增加如下内容

    nameserver 221.129.243.198
    nameserver 106.187.34.91

修改hostname，对"/etc/hosts"和"/etc/hostname"修改相应的hostname

virtualbox设置
----------
* 在网卡的适配器(Adapter1)选择"Bridged Adapter"，并选择"tap0"
* 在客户机里将ip设置为“192.168.1.26”等上述ip

virtualbox使用
==================

克隆虚拟机
--------------

    $ VBoxManage clonehd /full-path/src.vdi /full-path/dst.vdi

linux客户机访问主机共享目录
-----------------------------
设置共享目录"temp"，并在客户机mount共享目录

    $ sudo mount -t vboxsf temp /mnt/temp