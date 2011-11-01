# adapted from rspec-rails http://github.com/rspec/rspec-rails/blob/master/spec/rspec/rails/mocks/mock_model_spec.rb
# USAGE:
#
#    subject { ModelUnderTest.new(params) }
#    it_behaves_like "ActiveModel"

shared_examples_for "ActiveModel" do
  require 'test/unit/assertions'
  require 'active_model/lint'
  include Test::Unit::Assertions
  include ActiveModel::Lint::Tests

  before do
    @model = subject
  end

  ActiveModel::Lint::Tests.public_instance_methods.map { |method| method.to_s }.grep(/^test/).each do |method|
    example(method.gsub('_', ' ')) { send method }
  end
end
