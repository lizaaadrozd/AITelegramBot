# 🤖 Telegram AI Bot (Ruby + Gemini)

A Telegram bot built in Ruby that uses Google Gemini AI to generate responses to user messages. Perfect for experimenting with generative AI and Telegram bots.

---

## 🧠 Features

- Responds to messages in Telegram chats
- Integrates with Google Gemini (Generative Language API)
- Adds a custom phrase after every AI response
- Supports `/start` command with personalized greeting

---


### 🔧 Requirements

- Ruby ≥ 3.0
- Bundler (`gem install bundler`)
- Telegram Bot Token (get from [@BotFather](https://t.me/BotFather))
- Gemini API Key (create at [Google AI Studio](https://aistudio.google.com/app/apikey))


---

### 📥 Steps

1. **Clone the repository**

```bash
git clone https://github.com/lizaaadrozd/AITelegramBot.git
cd your-repo
```
2. **Install dependencies**
```bash
bundle install
```
3. **Create a .env file**
```bash
TELEGRAM_BOT_API_TOKEN=your_telegram_bot_token
GEMINI_API_KEY=your_gemini_api_key
```
4. **Run the bot**
```bash
ruby run_bot.rb
```

---

### 🧪 Test the Bot

- Open a chat with your bot in Telegram
- Send /start to get a greeting
- Try sending a question like: "Tell me something interesting"

---

### 🔐 Security
❗ Never commit your .env file to GitHub. Make sure .env is in your .gitignore.