#!/usr/bin/bash

# 运行所有脚本

cd /tmp/custom.script

. config.sh
. commfunc.sh

# 恢复 cp 原始行为，即使用 -rf 不提示覆盖 
#unalias cp

cd $BASE_PATH
files=$(ls $BASE_PATH | grep -E "set.*.sh")
for filename in $files
do
   bash $filename
done

# 恢复 cp 别名，即使用 -rf 提示覆盖 
#alias cp='cp -i'

files=$(ls $BASE_PATH | grep -E "loop.*.sh")
for filename in $files
do
   nohup bash $filename > output.put 2>&1 &
done

