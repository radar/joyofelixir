require 'minitest/autorun'
require 'capybara/minitest'

require "selenium/webdriver"

Capybara.default_driver = :selenium_chrome_headless
