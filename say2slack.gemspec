# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'say2slack/version'

Gem::Specification.new do |spec|
  spec.name          = "say2slack"
  spec.version       = Say2Slack::VERSION
  spec.authors       = ["Nick Prokesch"]
  spec.email         = ["nick@prokes.ch"]
  spec.summary       = %q{A simple ruby gem for post messages to Slack}
  spec.description   = %q{A syntax and gem for posting to slack channels or DMs with one line of code}
  spec.homepage      = "http://nick.prokes.ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths    = ["lib"]

  spec.add_dependency "rest-client", ">= 1.8", "< 3.0"
end
