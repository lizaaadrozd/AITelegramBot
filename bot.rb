require 'telegram/bot'
require_relative 'gemini_client'

class GeminiBot
  TOKEN = ENV['TELEGRAM_BOT_API_TOKEN']

  def run
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        name = message.from.first_name || "друже"

        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Привіт, #{name}!")
        else
          reply = GeminiClient.generate(message.text)
          bot.api.send_message(chat_id: message.chat.id, text: reply)
        end
      end
    end
  end
end
