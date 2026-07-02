#!/bin/bash
# ============================================================
# 蓝鹰AI网关 (BlueEagle AI Gateway) - cURL 调用示例
# 官方文档: https://ahg.codes
# ============================================================

# ====== 配置 ======
API_KEY="YOUR_API_KEY"              # 替换为你的蓝鹰 API Key
BASE_URL="https://ahg.codes/v1"     # 蓝鹰 AI 网关地址

echo "============================================================"
echo " 蓝鹰AI网关 (BlueEagle AI Gateway) - cURL 示例"
echo "============================================================"
echo ""

# ----- 1. GPT-4o 普通调用 -----
echo "【1. GPT-4o 普通调用】"
curl -s "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${API_KEY}" \
  -d '{
    "model": "gpt-4o",
    "messages": [
      {"role": "user", "content": "你好，蓝鹰AI网关！"}
    ],
    "max_tokens": 256
  }' | python3 -m json.tool 2>/dev/null || echo "请确保已设置 API_KEY"

echo ""
echo ""

# ----- 2. Claude 3.5 Sonnet 调用 -----
echo "【2. Claude 3.5 Sonnet 调用】"
curl -s "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${API_KEY}" \
  -d '{
    "model": "claude-3-5-sonnet-20241022",
    "messages": [
      {"role": "user", "content": "Hello from Claude via BlueEagle!"}
    ],
    "max_tokens": 256
  }' | python3 -m json.tool 2>/dev/null || echo "请确保已设置 API_KEY"

echo ""
echo ""

# ----- 3. 流式输出 (SSE) -----
echo "【3. GPT-4o 流式调用】"
curl -N "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${API_KEY}" \
  -d '{
    "model": "gpt-4o",
    "messages": [
      {"role": "user", "content": "请用一句话介绍蓝鹰AI网关"}
    ],
    "max_tokens": 128,
    "stream": true
  }' 2>/dev/null || echo "请确保已设置 API_KEY"

echo ""
echo ""

# ----- 4. 查看可用模型列表 -----
echo "【4. 查看可用模型列表】"
curl -s "${BASE_URL}/models" \
  -H "Authorization: Bearer ${API_KEY}" \
  | python3 -m json.tool 2>/dev/null || echo "请确保已设置 API_KEY"
