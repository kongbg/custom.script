#!/usr/bin/bash

# 恢复 node

# 进入跟目录
cd /root

# 复制node 到/usr/local/bin/
cp -rf /mnt/user/kongbage/node/node-v16.5.0-linux-x64 /usr/local

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
# 设置权限
sudo chmod +x /usr/bin/node
sudo chmod +x /usr/bin/npm
sudo chmod +x /usr/bin/npx