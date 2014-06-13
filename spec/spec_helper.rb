require "simplecov"

require "haversine_fast"

SimpleCov.start do
  add_group "lib", 'lib/*'
end


RSpec.configure do |c|
  c.before(:all) do
    system "rake clean compile"
  end
end