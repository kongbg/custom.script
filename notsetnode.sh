#!/usr/bin/bash

# 恢复 docker-compose

# 进入跟目录
cd /root

# 复制docker-compose 到/usr/local/bin/
cp -rf /boot/config/unraid-config-back/node-v16.5.0-linux-x64 /usr/local

# 删除老node
rm -rf /usr/bin/node
# 删除老npm
rm -rf /usr/bin/npm
# 删除老npx
rm -rf /usr/bin/npx

# 设置软连接
ln -s /usr/local/node-v16.5.0-linux-x64/bin/node /usr/bin/ 
ln -s /usr/local/node-v16.5.0-linux-x64/bin/npm /usr/bin/ 
ln -s /usr/local/node-v16.5.0-linux-x64/bin/npx /usr/bin/ 