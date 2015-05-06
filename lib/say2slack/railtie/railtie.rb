module Say2Slack
  class Say2SlackRailtie < ::Rails::Railtie
    initializer "say2slackrailtie.override_string" do
      class String
        def says(message)
          obj = Say2Slack::Main.new(self)
          obj.says(message)
        end

        def to(channel='C03J89HD8')
          url = [self, "&channel=#{channel}"].join
          RestClient.post(URI.encode(url), {}, content_type: :json)
        end
      end
    end
  end
end
