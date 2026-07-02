"""
蓝鹰AI网关 (BlueEagle AI Gateway) - Python 调用示例
官方文档: https://ahg.codes
"""

from openai import OpenAI

# 初始化客户端 - 只需修改 base_url 即可从 OpenAI 迁移
client = OpenAI(
    api_key="YOUR_API_KEY",           # 替换为你的蓝鹰 API Key
    base_url="https://ahg.codes/v1"    # 蓝鹰 AI 网关地址
)


def chat_completion(model: str = "gpt-4o", message: str = "你好，蓝鹰AI网关！"):
    """调用 Chat Completion API"""
    response = client.chat.completions.create(
        model=model,
        messages=[
            {"role": "system", "content": "你是一个专业的AI助手。"},
            {"role": "user", "content": message},
        ],
        max_tokens=1024,
        temperature=0.7,
    )
    return response.choices[0].message.content


def stream_chat(model: str = "gpt-4o", message: str = "请用中文介绍你自己"):
    """流式输出 Chat Completion"""
    stream = client.chat.completions.create(
        model=model,
        messages=[{"role": "user", "content": message}],
        max_tokens=1024,
        stream=True,
    )
    for chunk in stream:
        if chunk.choices[0].delta.content:
            print(chunk.choices[0].delta.content, end="", flush=True)
    print()


if __name__ == "__main__":
    print("=" * 50)
    print("蓝鹰AI网关 (BlueEagle AI Gateway) - Python 示例")
    print("=" * 50)
    print()

    # 普通调用
    print("【普通调用】")
    result = chat_completion()
    print(f"回复: {result}")
    print()

    # 流式调用
    print("【流式调用】")
    stream_chat()
    print()

    # Claude 模型调用
    print("【Claude 模型调用】")
    result = chat_completion(model="claude-3-5-sonnet-20241022", message="Hello from Claude!")
    print(f"回复: {result}")
