# filename: login_spec.rb

require 'selenium-webdriver'

describe 'Login' do
  
  before(:each) do
    chromedriver = File.join(Dir.pwd, 'vendor', 'chromedriver')
    @driver = Selenium::WebDriver.for :chrome, driver_path: chromedriver
  end

  after(:each) do
    @driver.quit
  end

  it 'successed' do
    @driver.get 'http://the-internet.herokuapp.com/login'
    @driver.find_element(id: 'username').send_keys('tomsmith')
    @driver.find_element(id: 'password').send_keys('SuperSecretPassword!')
    @driver.find_element(css: 'button').submit
  end
end
