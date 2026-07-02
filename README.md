<div align="center">

# 🦅 蓝鹰AI网关 | BlueEagle AI Gateway

**全球顶尖大模型统一API网关 — 一站式接入所有主流AI模型**

**One API Gateway to Rule Them All**

[![Official Site](https://img.shields.io/badge/官网-https%3A%2F%2Fahg.codes-blue?style=flat-square&logo=world-wide-web)](https://ahg.codes)
[![Price](https://img.shields.io/badge/价格倍率-0.09x-success?style=flat-square)](https://ahg.codes)
[![Rate](https://img.shields.io/badge/充值比例-1%3A1-green?style=flat-square)](https://ahg.codes)
[![Pool](https://img.shields.io/badge/号池-100%25原生官方-orange?style=flat-square)](https://ahg.codes)
[![Compatibility](https://img.shields.io/badge/兼容-OpenAI接口规范-9cf?style=flat-square&logo=openai)](https://ahg.codes)
[![Free Test](https://img.shields.io/badge/测试-注册即送额度-purple?style=flat-square)](https://ahg.codes)

**🔥 仅需官方价格 9% — 每花1元人民币 = 1美元官方额度**

</div>

---

## 🌟 项目简介 | Introduction

蓝鹰AI网关（BlueEagle AI Gateway）是一个专业级的 AI 大模型 API 中转服务，提供统一接入点访问 OpenAI、Anthropic Claude、Google Gemini 等全球顶尖大模型。采用 **100% 原生官方号池**，多账号智能负载均衡，毫秒级自动故障切换，完全兼容 OpenAI 接口规范，**零代码迁移**。

BlueEagle AI Gateway is a professional-grade API relay service for frontier AI models. It provides a unified endpoint to access OpenAI, Anthropic Claude, Google Gemini, and more. Powered by **100% native official account pools**, intelligent multi-account load balancing, millisecond-level failover, and **full OpenAI API compatibility** — zero code migration required.

> 💡 **核心亮点**：充值比例 **1:1**（1元 = 1美元额度），消耗倍率仅 **0.09x**，相当于官方价格的 **9%**！

---

## ✨ 核心优势 | Key Features

| 特性 | 说明 |
|------|------|
| 💰 **极致性价比** | 消耗倍率仅 **0.09x**，仅为官方定价的 9% |
| 💵 **1:1 充值比例** | 充 1 元人民币 = 1 美元官方额度，无汇率损耗 |
| 🏦 **额度永不过期** | 按量计费，用多少付多少，额度永久有效、不清零 |
| 🔒 **100% 原生官方号池** | 无掺假、无共享、无二次中转，纯净原生 |
| 🧪 **免费测试** | 注册即送测试额度，零成本体验全部功能 |
| ⚡ **智能负载均衡** | 多账号智能分配 + 毫秒级自动故障切换 |
| 🔌 **零代码迁移** | 完全兼容 OpenAI 接口规范，改一个 URL 即可接入 |
| 🌍 **全球加速** | 全球节点部署，低延迟高可用 |

---

## 📋 支持模型 | Supported Models

| 提供商 | 支持模型 | 状态 |
|--------|----------|------|
| **OpenAI** | GPT-4o, GPT-4o-mini, GPT-4-Turbo, GPT-4, GPT-3.5-Turbo, o1, o1-mini, o3-mini | ✅ 已支持 |
| **Anthropic** | Claude 4 Sonnet, Claude 4 Opus, Claude 3.5 Sonnet, Claude 3.5 Haiku, Claude 3 Opus | ✅ 已支持 |
| **Google** | Gemini 2.5 Pro, Gemini 2.5 Flash, Gemini 2.0, Gemini 1.5 Pro | ✅ 已支持 |
| **Antigravity** | Antigravity 全系列 | ✅ 已支持 |
| **DeepSeek** | DeepSeek V3, DeepSeek R1 | 🚧 即将支持 |
| **通义千问** | Qwen-Max, Qwen-Plus | 🚧 即将支持 |
| **Meta Llama** | Llama 3, Llama 3.1 | 🚧 即将支持 |

> 📌 持续更新中，更多模型陆续接入。访问官网 [https://ahg.codes](https://ahg.codes) 查看最新模型列表。

---

## 🚀 快速开始 | Quick Start

### 1️⃣ 注册并获取 API Key

前往 [https://ahg.codes](https://ahg.codes) 注册账号，在控制台创建 API Key。注册即送免费测试额度！

### 2️⃣ 调用 API

**Base URL**: `https://ahg.codes/v1`

**只需将你原有的 OpenAI API Base URL 替换为上述地址，其他代码无需任何改动！**

#### cURL 示例

```bash
curl https://ahg.codes/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -d '{
    "model": "gpt-4o",
    "messages": [
      {"role": "user", "content": "Hello from BlueEagle AI Gateway!"}
    ]
  }'
```

#### Python 示例

```python
from openai import OpenAI

client = OpenAI(
    api_key="YOUR_API_KEY",
    base_url="https://ahg.codes/v1"
)

response = client.chat.completions.create(
    model="gpt-4o",
    messages=[
        {"role": "user", "content": "Hello from BlueEagle AI Gateway!"}
    ]
)

print(response.choices[0].message.content)
```

#### Node.js 示例

```javascript
import OpenAI from "openai";

const client = new OpenAI({
  apiKey: "YOUR_API_KEY",
  baseURL: "https://ahg.codes/v1",
});

const response = await client.chat.completions.create({
  model: "gpt-4o",
  messages: [
    { role: "user", content: "Hello from BlueEagle AI Gateway!" },
  ],
});

console.log(response.choices[0].message.content);
```

---

## 💰 充值与计费 | Pricing & Billing

### 充值比例：1:1

| 充值金额 | 获得额度 | 等价官方价值 |
|----------|----------|-------------|
| ¥10 | $10 | ~$10 |
| ¥50 | $50 | ~$50 |
| ¥100 | $100 | ~$100 |
| ¥500 | $500 | ~$500 |

### 实际消耗示例（0.09x 倍率）

以 GPT-4o 为例（官方价格约 $5/1M input tokens）：

| 用量 | 官方费用 | 蓝鹰费用 | 节省 |
|------|---------|---------|------|
| 1M input tokens | $5.00 | **$0.45** | 91% |
| 10M input tokens | $50.00 | **$4.50** | 91% |
| 100M input tokens | $500.00 | **$45.00** | 91% |

> 🎯 **也就是说：充值 50 元人民币，实际可用的 token 量相当于官方约 556 美元的用量！**

---

## ⚔️ 竞品对比 | Comparison

| 特性 | 蓝鹰AI网关 | OpenAI 官方 | 其他中转站 |
|------|-----------|------------|-----------|
| **价格倍率** | **0.09x** | 1x | 0.3x ~ 0.8x |
| **充值比例** | **1:1** | - | 1:5 ~ 1:10 |
| **号池质量** | **100% 原生官方** | 官方 | 混合/掺假 |
| **故障切换** | 毫秒级自动 | 手动 | 无/慢 |
| **OpenAI兼容** | **完全兼容** | - | 部分 |
| **免费测试** | ✅ | ❌ | 部分 |
| **额度有效期** | **永不过期** | - | 30天~1年 |
| **模型覆盖** | 全主流模型 | 仅OpenAI | 部分 |

---

## 🛠️ 项目文件 | Project Files

```
blueeagle-ai-gateway/
├── README.md                  # 项目说明文档（本文件）
├── examples/
│   ├── python_example.py      # Python 调用示例
│   ├── node_example.js        # Node.js 调用示例
│   └── curl_example.sh       # cURL 调用示例
├── LICENSE                    # MIT 许可证
└── .github/
    └── workflows/
        └── sync.yml           # 文档同步工作流
```

---

## 📞 联系与支持 | Contact & Support

- 🌐 **官方网站**: [https://ahg.codes](https://ahg.codes)
- 📧 **邮箱**: support@ahg.codes
- 💬 **技术支持**: 注册后通过官网控制台提交工单

---

## ⚠️ 免责声明 | Disclaimer

本仓库为蓝鹰AI网关（BlueEagle AI Gateway）的介绍与示例文档。用户在使用服务时应遵守相关法律法规及服务条款。AI 模型的输出内容由对应模型提供商负责，本服务仅提供 API 中转功能。请勿将本服务用于任何违法违规用途。

This repository contains documentation and examples for BlueEagle AI Gateway. Users must comply with applicable laws and terms of service. AI model outputs are the responsibility of their respective providers. This service provides API relay functionality only.

---

<div align="center">

**⭐ 如果这个项目对你有帮助，请给我们一个 Star！**

**If this project helps you, please give us a Star! ⭐**

[访问官网开始使用](https://ahg.codes)

</div>
