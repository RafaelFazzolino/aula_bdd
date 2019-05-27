require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  #Possibilidades de drivers:
  # selenium - firefox
  # selenium-chrome - chrome
  # selenium-chrome-headless - sem interface

  config.default_driver = :selenium

  # URL inicial
  config.app_host = 'https://matriculaweb.unb.br/graduacao/default.aspx'

  config.default_max_wait_time = 10
end