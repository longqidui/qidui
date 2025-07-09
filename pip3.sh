#!/bin/bash

# 设置国内的镜像源
MIRROR_URL="http://mirrors.aliyun.com/pypi/simple"

# 插件列表
PLUGINS=(
    "asyncio"
    "random"
    "ssl"
    "loguru"
    "websockets==10.3"
    "websockets_proxy==0.1.2" # 指定版本
    "fake_useragent"
    "requests"
    "aiohttp" # 用于支持 WebSocket 代理的连接
)

# 安装所有插件
echo "开始安装所需插件..."
for plugin in "${PLUGINS[@]}"; do
    echo "正在安装 $plugin ..."
    pip3 install $plugin --proxy="$MIRROR_URL"
done

echo "所有插件已安装完毕！"
