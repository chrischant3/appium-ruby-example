require 'rspec/expectations'
require 'appium_lib'
require 'cucumber'
require 'cucumber/ast'
require 'require_all'
require 'watir-webdriver'

require_relative 'world_pages'

Before do
  # Update app_path with the full path to SafariLauncher.app
  app_path = '../SafariLauncher/build/Release-iphoneos/SafariLauncher.app'
  server_url = 'http://0.0.0.0:4723/wd/hub'

  if ENV['DEVICENAME'] == 'iphone simulator'
    caps = { platformName: 'ios', deviceName: 'iPhone 6', browserName: 'Safari', platformVersion: '9.2', app: app_path }
  elsif ENV['DEVICENAME'] == 'android'
    caps = { platformName: 'Android', deviceName: 'Nexus 5', browserName: 'Chrome', appPackage: 'com.android.chrome' }
  else
    caps = { platformName: 'ios', deviceName: 'iPhone 6', browserName: 'Safari', platformVersion: '9.2', app: app_path }
  end
  driver = Selenium::WebDriver.for(:remote, desired_capabilities: caps, url: server_url)
  browser = Watir::Browser.new(driver)
  @browser = browser
end

After do
  @browser.quit
end
