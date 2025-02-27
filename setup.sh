#!/bin/bash

# 创建项目目录结构
mkdir -p brain-light-ai/{frontend,backend}

# 初始化前端（使用 Next.js）
cd brain-light-ai/frontend
npx create-next-app@latest . --yes

# 初始化后端
cd ../backend
npm init -y
npm install express mongoose cors dotenv web3 ethers

# 创建 .env 文件并写入 API 密钥
echo "DEEPSEEK_API_KEY=sk-W1q_xq-lUNjRm4Drbt28VY-70Dx7S6ch3qiqWjhCL4M" > .env

# 创建初始后端文件
touch server.js
echo "console.log('Backend server running');" > server.js

# 返回项目根目录
cd ../..

# 安装前端依赖
cd brain-light-ai/frontend
npm install

# 安装后端依赖
cd ../backend
npm install

# 输出完成信息
echo "项目初始化完成！请进入 brain-light-ai/frontend 启动前端，进入 brain-light-ai/backend 启动后端。"