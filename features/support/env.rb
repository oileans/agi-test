require 'selenium-webdriver'
require 'site_prism'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'pry'

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_driver = :site_prism
  config.default_max_wait_time = 4
  Capybara.page.driver.browser.manage.window.maximize
  config.app_host = 'https://blogdoagi.com.br/'
end
