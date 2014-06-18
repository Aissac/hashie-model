require 'active_model'

# Load vendored Hashie2 unless it is already loaded.
# We must have version >= 2.0 in order to get the Conversions API.
if defined?(Hashie2)
  raise "Hashie2 >= 2.0.0 required by Hashie2Model." unless Hashie2::VERSION.split('.').first.to_i >= 2
else
  $:.unshift File.expand_path(File.join('..', 'vendor', 'hashie2', 'lib'), File.dirname(__FILE__))
end
require 'hashie2'

require 'active_support'
require 'active_support/core_ext'
require 'active_support/json'
require 'money'
require 'monetize'

module HashieModel
  extend ActiveSupport::Autoload
  
  autoload :ArrayOf
  autoload :AssociatedValidator
  autoload :Base
  autoload :Money
  
  autoload :Version
  
  include ArrayOf
end
