require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host =  'http://icontrol.ipinionsurveys.com'
end
