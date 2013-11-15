$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'debugger'
require 'pry'

require 'hashie-model'
require 'rspec'
require 'shoulda-matchers'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

require 'hashie_model/spec/matchers'

RSpec.configure do |config|
  
end
