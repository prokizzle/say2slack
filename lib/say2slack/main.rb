require 'rest-client'
module Say2Slack
  class Main
    def initialize(user)
      @user = user
      @token = ENV['SLACK_API_TOKEN'] || ""
      @image = ENV['SLACK_BOT_IMG'] || ""
    end

    def says(message)
      endpoint = "https://slack.com/api/chat.postMessage"
      return [
        "#{endpoint}?token=#{@token}",
        "username=#{@user}",
        "text=#{message}"
      ].join("&")
    end
  end
end
