# Send2Slack

A simple ruby gem for sending messages to slack

## Setup

`gem install say2slack`

or include in Gemfile

```ruby
# Gemfile
source 'https://rubygems.org'

gem 'say2slack'
```

## Configuration

Set environment variables for:

- SLACK_API_TOKEN
- SLACK_BOT_IMG (url to image)

## Usage

Call from your code:

`"FromName".says("Message").to("#roomName")`

where FromName is who you want the message to be sent from, Message is the text you want posted to the channel, and roomName is the name of the channel you're posting to. roomName can also be a @user. In this instance, it appear in the slackbot thread.
