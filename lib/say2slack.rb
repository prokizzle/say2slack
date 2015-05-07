module Say2Slack
  Dir[File.dirname(__FILE__) + '/say2slack/*.rb'].each do |file|
    require file
  end
  if defined?(Rails)
    require File.dirname(__FILE__) + '/say2slack/railtie/railtie.rb'
  end
end
