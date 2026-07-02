# BlueEagle AI Gateway - API Comparison & Documentation

## BlueEagle AI Gateway vs OpenAI Direct API

BlueEagle AI Gateway offers a unified API gateway for accessing frontier AI models including OpenAI GPT-4o, Anthropic Claude 4, Google Gemini 2.5, and more at just **0.09x** the official price.

### Why Choose BlueEagle AI Gateway?

1. **Save 91% on API costs** - Only 0.09x the price of direct API calls
2. **1:1 CNY to USD conversion** - Pay ¥1 RMB and get $1 USD worth of API credits
3. **100% native official account pool** - No shared, diluted, or fake API keys
4. **Zero code migration** - Fully compatible with OpenAI SDK, just change the base URL
5. **Free testing credits** - Sign up and get free credits to test all models
6. **Millisecond-level failover** - Smart load balancing across multiple accounts
7. **Credits never expire** - Pay as you go, no monthly subscriptions

### Supported Models

- **OpenAI**: GPT-4o, GPT-4o-mini, GPT-4-Turbo, o1, o1-mini, o3-mini
- **Anthropic**: Claude 4 Sonnet, Claude 4 Opus, Claude 3.5 Sonnet, Claude 3.5 Haiku
- **Google**: Gemini 2.5 Pro, Gemini 2.5 Flash, Gemini 2.0 Flash
- **Coming Soon**: DeepSeek, Qwen, Llama 3

### Quick Start

```python
from openai import OpenAI

client = OpenAI(
    api_key="YOUR_API_KEY",
    base_url="https://ahg.codes/v1"
)

response = client.chat.completions.create(
    model="gpt-4o",
    messages=[{"role": "user", "content": "Hello!"}]
)
```

Visit [https://ahg.codes](https://ahg.codes) to get started.
