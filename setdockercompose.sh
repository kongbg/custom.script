#!/usr/bin/bash

# 恢复 docker-compose

# 进入跟目录
cd /root

# 复制docker-compose 到/usr/local/bin/
cp -rf /boot/config/unraid-config-back/docker-compose /usr/local/bin/
# 赋权限
sudo chmod +x /usr/local/bin/docker-compose