#!/bin/bash

# 配置部分
# 替换为你的wasm项目路径
wasm_project_path="xxxxx/wasm-develop"
# 替换为你的Vue项目路径
vue_project_path="xxxxx/vue-wasm"
# 替换为你的Vue项目中放置wasm包的目录
wasm_output_dir="public/wasm/fib"

# 构建wasm包
cd "$wasm_project_path"
wasm-pack build

# 复制wasm包到Vue项目
cp -r pkg "$vue_project_path/$wasm_output_dir"

