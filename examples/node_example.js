/**
 * 蓝鹰AI网关 (BlueEagle AI Gateway) - Node.js 调用示例
 * 官方文档: https://ahg.codes
 */

import OpenAI from "openai";

// 初始化客户端 - 只需修改 baseURL 即可从 OpenAI 迁移
const client = new OpenAI({
  apiKey: "YOUR_API_KEY",           // 替换为你的蓝鹰 API Key
  baseURL: "https://ahg.codes/v1",   // 蓝鹰 AI 网关地址
});

// 普通调用
async function chatCompletion(model = "gpt-4o", message = "你好，蓝鹰AI网关！") {
  const response = await client.chat.completions.create({
    model,
    messages: [
      { role: "system", content: "你是一个专业的AI助手。" },
      { role: "user", content: message },
    ],
    max_tokens: 1024,
    temperature: 0.7,
  });
  return response.choices[0].message.content;
}

// 流式调用
async function streamChat(model = "gpt-4o", message = "请用中文介绍你自己") {
  const stream = await client.chat.completions.create({
    model,
    messages: [{ role: "user", content: message }],
    max_tokens: 1024,
    stream: true,
  });

  for await (const chunk of stream) {
    const content = chunk.choices[0]?.delta?.content;
    if (content) {
      process.stdout.write(content);
    }
  }
  console.log();
}

// 主函数
async function main() {
  console.log("=".repeat(50));
  console.log("蓝鹰AI网关 (BlueEagle AI Gateway) - Node.js 示例");
  console.log("=".repeat(50));
  console.log();

  // 普通调用
  console.log("【普通调用】");
  const result = await chatCompletion();
  console.log(`回复: ${result}`);
  console.log();

  // 流式调用
  console.log("【流式调用】");
  await streamChat();
  console.log();

  // Claude 模型调用
  console.log("【Claude 模型调用】");
  const claudeResult = await chatCompletion(
    "claude-3-5-sonnet-20241022",
    "Hello from Claude!"
  );
  console.log(`回复: ${claudeResult}`);
}

main().catch(console.error);
