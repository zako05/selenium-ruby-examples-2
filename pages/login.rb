# filename: pages/login.rb
require_relative 'base_page'

class Login < BasePage

  LOGIN_FORM      = {id: 'login'}
  USERNAME_INPUT  = {id: 'username'}
  PASSWORD_INPUT  = {id: 'password'}
  SUBMIT_BUTTON   = {css: 'button'}
  SUCCESS_MESSAGE = {css: '.flash.success'}
  FAILURE_MESSAGE = {css: '.flash.error'}

  def initialize(driver)
    super
    # @driver = driver
    # @driver.get 'http://the-internet.herokuapp.com/login'
    visit '/login'
    raise 'Login page not ready' unless is_displayed?(LOGIN_FORM) 
    # @driver.find_element(LOGIN_FORM).displayed?
  end

  def with(username,password)
    # @driver.find_element(USERNAME_INPUT).send_keys(username)
    type username, USERNAME_INPUT
    # @driver.find_element(PASSWORD_INPUT).send_keys(password)
    type password, PASSWORD_INPUT
    # @driver.find_element(SUBMIT_BUTTON).click
    click SUBMIT_BUTTON
    # sleep(1)
  end

  def success_message_present?
    # @driver.find_element(SUCCESS_MESSAGE).displayed?
    wait_for(1) { is_displayed? SUCCESS_MESSAGE }
    is_displayed? SUCCESS_MESSAGE
  end

  def failure_message_present?
    # @driver.find_element(FAILURE_MESSAGE).displayed?
    wait_for(1) { is_displayed? FAILURE_MESSAGE }
    is_displayed? FAILURE_MESSAGE
  end

end

