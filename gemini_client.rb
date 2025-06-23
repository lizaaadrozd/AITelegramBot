require 'rest-client'
require 'json'
require 'dotenv/load'

class GeminiClient
  API_KEY = ENV['GEMINI_API_KEY']
  API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=#{API_KEY}"

  def self.generate(prompt)
    payload = {
      contents: [
        { role: "user", parts: [ { text: prompt } ] }
      ]
    }

    headers = { "Content-Type" => "application/json" }

    response = RestClient.post(API_URL, payload.to_json, headers)
    data = JSON.parse(response.body)
    text = data.dig("candidates", 0, "content", "parts", 0, "text") || "🤖 Відповідь не знайдено"

    "#{text.strip} \nЩе є питання — гукай!"
  rescue RestClient::ExceptionWithResponse => e
    "API помилка: #{e.response}"
  rescue => e
    "Вибач, сталася помилка: #{e.message}"
  end
end
