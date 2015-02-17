require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot'
require 'yaml'
require 'benchmark'
require 'capybara-screenshot/cucumber'
require 'page-object'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.default_wait_time = 20
Capybara.default_selector = :xpath

#xpath_repository = "config/xpaths.yml"
#locator= YAML::load(File.open(xpath_repository))

# Check for win32 / 64 bit machine
if RbConfig::CONFIG['host_os'] == "mswin32" || RbConfig::CONFIG['host_os'] == "mswin64"
  begin 
    Selenium::WebDriver::Firefox.path = "C:/Program Files/Mozilla Firefox/firefox.exe"
  rescue
    Selenium::WebDriver::Firefox.path = "C:/Program Files (x86)/Mozilla Firefox/firefox.exe"
  end
end

# Set the Firefox browser 
  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :ff)
end
