$: << File.dirname( __FILE__)
$: << File.dirname( __FILE__) + "/user_data"

require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'user_data.rb'

SELENIUM_SERVER_IP 		= "127.0.0.1"
SELENIUM_SERVER_PORT 	= "4444"

Capybara.default_driver = :selenium

# ========== TO DO ========== #
# See how to pass capability from command line - then we can decide on which browser to run tests
# caps = Selenium::WebDriver::Remote::Capabilities.firefox
# somethig like: if (passed.Browser == chrome) -> use chrome capability

  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  
# ========== TO DO ========== #

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app,
		:browser => :remote,
		:url => "http://#{SELENIUM_SERVER_IP}:#{SELENIUM_SERVER_PORT}/wd/hub",
		:desired_capabilities => caps)
end