require 'rest-client'
module Say2Slack
  class Main
    def initialize(user)
      @user = user
      @token = ENV['SLACK_API_TOKEN'] || ""
      @image = ENV['SLACK_BOT_IMG'] || "http://i.imgur.com/EEdDLWz.png"
    end

    def says(message)
      endpoint = "https://slack.com/api/chat.postMessage"
      return [
        "#{endpoint}?token=#{@token}",
        "username=#{@user}",
        "text=#{message}",
        "icon_url=#{@image}",
      ].join("&")
    end
  end
end
