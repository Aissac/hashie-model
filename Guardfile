guard 'bundler' do
  watch('Gemfile')
end

guard 'rspec', :version => 2, :all_on_start => true, :notification => false, :cli => '--color --format nested --fail-fast' do
  watch(%r{^fixtures/.+\.json$}) { |m| Dir['spec/**/*_spec.rb'] }
  watch(%r{^spec/.+\.rb$})       { Dir['spec/**/*_spec.rb'] }
  watch(%r{^lib/(.+)\.rb$})      { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')   { Dir['spec/**/*_spec.rb'] }
end

# guard 'yard' do
#   watch(%r{lib/.+\.rb})
# end
