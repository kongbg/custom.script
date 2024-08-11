#!/usr/bin/bash

# 恢复 zsh

# 进入跟目录
cd /root

# 复制zsh 到/bin
cp -rf /boot/config/unraid-config-back/zsh /bin/

# 修复确实libtinfo.so.5文件问题
sudo ln -s /usr/lib64/libtinfo.so.6 /usr/lib64/libtinfo.so.5