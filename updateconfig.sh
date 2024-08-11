#!/usr/bin/bash

# 进入跟目录
cd /root

# 创建一个备份目录，如果不存在就创建，存在即忽略
mkdir -p /boot/config/unraid-config-back

# 备份docker-compose
sudo cp -rf /usr/local/bin/docker-compose /boot/config/unraid-config-back

# 备份node
# sudo cp -rf /usr/local/node-v16.5.0-linux-x64 /boot/config/unraid-config-back

# 备份zsh
sudo cp -rf /bin/zsh /boot/config/unraid-config-back



