require 'factory_girl'

Dir[File.dirname(__FILE__) + '/../lib/**/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/factories/**/*.rb'].each {|file| require file }