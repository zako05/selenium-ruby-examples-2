#geckodriver filename: login_spec.rb

# require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/login'

describe 'Login', :shallow do
  
  before(:each) do
    # chromedriver = File.join(Dir.pwd, 'vendor', 'chromedriver')
    # @driver = Selenium::WebDriver.for :chrome
    #, driver_path: chromedriver 
    # geckodriver = File.join(Dir.pwd, 'vendor', 'geckodriver')
    # @driver = Selenium::WebDriver.for :firefox, driver_path: geckodriver
    @login = Login.new(@driver)
  end

  # after(:each) do
  #   @driver.quit
  # end

  it 'successed' do
    @login.with('tomsmith','SuperSecretPassword!')
    expect(@login.success_message_present?).to eql true
  end

  it 'failed', :deep do
    @login.with('tomsmith','SuperSecretPassword')
    expect(@login.failure_message_present?).to eql true
    # expect(@login.success_message_present?).to eql false
  end

  it 'forced_failure' do
    expect(false).to eql true
  end

end
