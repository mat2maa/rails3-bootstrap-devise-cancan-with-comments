source 'https://rubygems.org'
ruby '1.8.7'
gem 'rails', '3.2.13'
gem 'mysql2'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

# Basics, authentication, user sessions, roles etc
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify', :git => 'git://github.com/softcraft-development/rolify.git', :ref => 'e2eaa7af68'
gem 'yaml_db'

# Forms
gem 'simple_form'
gem 'country-select'

# Nested Forms
gem 'nested_form'

# Better select boxes
gem 'select2-rails'

# Bootstrap date picker
gem 'bootstrap-datepicker-rails'

# Attachments
gem 'paperclip', '~> 2.7'

# Geo-coordinates and Google Maps
gem 'geocoder'
gem 'gmaps4rails'

group :development do
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'quiet_assets'
end

group :development, :test do
  #gem 'factory_girl_rails', '~> 2.0.0'
  gem 'rspec-rails'
end

group :test do
  #gem 'capybara'
  #gem 'cucumber-rails', :require=>false
  #gem 'database_cleaner'
  #gem 'email_spec'
  #gem 'launchy'
end