require 'active_model'

# Load vendored Hashie unless it is already loaded.
# We must have version >= 2.0 in order to get the Conversions API.
if defined?(Hashie)
  raise "Hashie >= 2.0.0 required by HashieModel." unless Hashie::VERSION.split('.').first.to_i >= 2
else
  $:.unshift File.expand_path(File.join('..', 'vendor', 'hashie', 'lib'), File.dirname(__FILE__))
end
require 'hashie'

require 'active_support'
require 'active_support/core_ext'
require 'active_support/json'
require 'money'

module HashieModel
  extend ActiveSupport::Autoload
  
  autoload :ArrayOf
  autoload :AssociatedValidator
  autoload :Base
  autoload :Money
  
  autoload :Version
  
  include ArrayOf
end
