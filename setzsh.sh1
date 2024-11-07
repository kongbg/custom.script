#!/usr/bin/bash

# 恢复 zsh

# 进入跟目录
cd /root

# 复制zsh 到/bin
cp -rf /boot/config/unraid-config-back/zsh /bin/

# 赋权限
sudo chmod +x /bin/zsh

# shells 新增 /bin/zsh
echo "/bin/zsh" >> /etc/shells

# 修复缺少libtinfo.so.5文件问题
# fix: zsh: error while loading shared libraries: libtinfo.so.5: cannot open shared object file: No such file or directory
sudo ln -s /usr/lib64/libtinfo.so.6 /usr/lib64/libtinfo.so.5

# 修复缺少/usr/lib64/zsh文件问题
# fix: zsh: failed to load module `zsh/zle': /usr/lib64/zsh/5.0.2/zsh/zle.so: cannot open shared object file: No such file or directory
cp -rf /boot/config/unraid-config-back/zsh2 /usr/lib64/

# 改名
mv /usr/lib64/zsh2 /usr/lib64/zsh