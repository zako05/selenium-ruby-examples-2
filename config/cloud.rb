# filename: config_cloud.rb

require 'sauce_whisk'

ENV['base_url']           ||= 'http://the-internet.herokuapp.com'
ENV['host']               ||= 'saucelabs'
ENV['SAUCE_USERNAME']     ||= 'michal_zak'
ENV['SAUCE_ACCESS_KEY']   ||= '87a0bd55-4015-46f3-902b-8b0fe977a801'
ENV['operating_system']   ||= 'Windows 7'
ENV['browser']            ||= 'internet_explorer'
ENV['browser_version']    ||= '9'
