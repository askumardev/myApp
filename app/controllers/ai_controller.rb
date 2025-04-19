# app/controllers/ai_controller.rb
class AiController < ApplicationController
  def index
  end

  def generate
    prompt = params[:prompt]

    client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])

    response = client.chat(
      parameters: {
        model: "gpt-4",
        messages: [{ role: "user", content: prompt }],
        temperature: 0.7
      }
    )

    @output = response.dig("choices", 0, "message", "content")
    render :index
  rescue => e
    @error = e.message
    render :index
  end
end
