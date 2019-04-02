# filename: Rakefile

def launch_with(config_filename)
  if ENV['tag']
    test_options = "-r ./config/#{config_filename} --order random --tag #{ENV['tag']}"
  else
    test_options = "-r ./config/#{config_filename} --order random"
  end
  system("parallel_rspec -o '#{test_options}' spec")
end

namespace :local do
  BROWSERS_LOCAL = [ 'firefox', 'chrome' ]
  BROWSERS_LOCAL.each do |browser|
    desc "Run tests locally #{browser.capitalize}"
    task browser.to_sym do
      ENV['browser'] = browser
      launch_with('local.rb')
    end
  end
end
      
namespace :cloud do
  BROWSERS_CLOUD = [ 'firefox', 'chrome', 'safari', 'internet_explorer' ]
  BROWSERS_CLOUD.each do |browser|
    desc "Run tests in Sauce Labs on #{browser.capitalize}"
    task browser.to_sym, :version, :os do |t, args|
      ENV['browser']          = browser
      ENV['browser_version']  = args[:version]
      ENV['operating_system'] = args[:os]
      launch_with('cloud.rb')
    end
  end
end
