#!/bin/sh
VmIp=$(terraform output vm_ip)
echo $VmIp
echo "host1 ansible_ssh_host=$VmIp" >> inventory