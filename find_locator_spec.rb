#geckodriver filename: find_locator.rb

require 'selenium-webdriver'

describe 'Login' do
  
  before(:each) do
    # chromedriver = File.join(Dir.pwd, 'vendor', 'chromedriver')
    @driver = Selenium::WebDriver.for :chrome
    #, driver_path: chromedriver 
    # geckodriver = File.join(Dir.pwd, 'vendor', 'geckodriver')
    # @driver = Selenium::WebDriver.for :firefox, driver_path: geckodriver
  end

  after(:each) do
    @driver.quit
  end

  it 'successed' do
    @driver.get 'http://the-internet.herokuapp.com/large'
    @driver.find_element(css: "div#siblings > div:nth-of-type(1) > div:nth-of-type(1)")
  end
end
