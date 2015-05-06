module Say2Slack
  Dir[File.dirname(__FILE__) + '/say2slack/*.rb'].each do |file|
    require file
  end
end
