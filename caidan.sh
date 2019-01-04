#!/bin/bash
caidan(){
cat <<EOF
=================
h 显示命令帮助
f 显示登陆信息
d 显示磁盘挂载
m 查看内存使用
u 查看系统负载
q 退出程序
================
EOF
}
caidan
while true
do
read -p "请输入你要干什么[f|d|m|u]: " sys
case "$sys" in
h)
clear
caidan
;;
f)
clear
w
;;
d)
clear
df -h
;;
m)
clear
free -m
;;
u)
clear
uptime
;;
q)
break
;;
*)
echo "error"
exit 1
esac
done
