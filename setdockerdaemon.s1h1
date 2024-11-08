#!/usr/bin/bash

# 设置dockerdaemon

# 进入跟目录
cd /root

mkdir -p /etc/docker
tee /etc/docker/daemon.json <<-'EOF'
{
	"registry-mirrors": ["https://docker.anyhub.us.kg", "https://dockerpull.com", "https://docker.awsl9527.cn", "https://docker.awsl9527.cn"],
    "dns": ["8.8.8.8"]
}
EOF

