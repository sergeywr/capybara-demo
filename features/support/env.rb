$: << File.dirname( __FILE__)
$: << File.dirname( __FILE__) + "/user_data"

require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'user_data.rb'
require 'appium_capybara'

#######################################################################
# ========================== SETUP BASE URL ==========================#

Capybara.app_host = 'https://www.worldremit.com' #or setup it as argument

#######################################################################
# ======================= SETUP IMPLICITY WAIT =======================#

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

#######################################################################
# ==================== SELENIUM GRID SERVER SETUP ==================== #

SELENIUM_SERVER_IP 		= "127.0.0.1"
SELENIUM_SERVER_PORT 	= "4723"

SELENIUM_GRID = "http://#{SELENIUM_SERVER_IP}:#{SELENIUM_SERVER_PORT}/wd/hub"

# =================================================================== #
#######################################################################
# ==================== GRID NODES CAPABILITY SETUP ===================#

def setup_desktop_grid(capability)
	Capybara.register_driver :selenium do |app|
		Capybara::Selenium::Driver.new(app,
			:browser => :remote,
			:url => SELENIUM_GRID,
			:desired_capabilities => capability)
	end
		Capybara.default_driver = :selenium
end

def setup_mobile_grid(capability)
	Capybara.register_driver(:appium) do |app|
	    appium_lib_options = {
	      :server_url => SELENIUM_GRID
	    }
	    all_options = {
	      :appium_lib => appium_lib_options,
	      :caps => capability
	    }
	    Appium::Capybara::Driver.new app, all_options
	end	
		Capybara.default_driver = :appium

end

# =================================================================== #
#######################################################################
# ========================= ENVIRONMENT SETUP ========================#

if ENV['ENVIRONMENT'] == 'DESKTOP-CHROME'
  	
  	caps = Selenium::WebDriver::Remote::Capabilities.chrome
  	setup_desktop_grid(caps)

elsif ENV['ENVIRONMENT'] == 'DESKTOP-FIREFOX'
  	
  	caps = Selenium::WebDriver::Remote::Capabilities.firefox
  	setup_desktop_grid(caps)

elsif ENV['ENVIRONMENT'] == 'MOBILE-ANDROID-CHROME'

	# TEST CAPABILITIES: TODO: REMOVE IN FUTURE
	caps_android_chrome = {
		platform:        "ANDROID",
		deviceName:     "10.1.5.129:5555",
		platformName:    "ANDROID",
		platformVersion: "4.3",
		app:             "chrome"
	}
	setup_mobile_grid(caps_android_chrome)
end	

# =================================================================== #
#######################################################################
# ========================= SCENARIO TEARDOWN ========================#

After do |scenario|
	Capybara.current_session.driver.quit
end

# =================================================================== #
#######################################################################