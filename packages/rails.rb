package :ruby do
  description 'Ruby Virtual Machine'
  version '1.9.2'
  source "ftp://ftp.ruby-lang.org:21//pub/ruby/1.9/ruby-1.9.2-p0.tar.gz"
  requires :ruby_dependencies
end

package :ruby_dependencies do
  description 'Ruby Virtual Machine Build Dependencies'
  apt %w( bison zlib1g-dev libssl-dev libreadline5-dev libncurses5-dev file )
end
# 
# package :rubygems do
#   description 'Ruby Gems Package Management System'
#   version '1.3.7'
#   source "http://production.cf.rubygems.org/rubygems/rubygems-#{version}.tgz" do
#     custom_install 'ruby setup.rb'
#   end
#   requires :ruby
# end

package :rails do
  description 'Ruby on Rails'
  gem 'rails'
  version '3.0.0'
  requires :ruby
end

package :gems do 
	description "Install some gems often used"
	gem "faker"
end