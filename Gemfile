source 'https://rubygems.org'

ruby '2.2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# pagination
gem 'kaminari'
gem 'foreman'
gem 'rack','~> 1.6.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
#APi gems
gem 'puma'

gem 'active_model_serializers', '0.9.3'
gem 'devise'


group :test do
  gem 'rake'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  # removed since sabisu do not work
  # gem 'sabisu_rails', github: "IcaliaLabs/sabisu-rails"
  # gem 'compass-rails'
  # gem 'furatto'
  # gem 'font-awesome-rails'
  # gem 'simple_form'
  gem 'guard'
  gem 'guard-rspec'
  gem 'pry'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'factory_girl_rails' # create fixtures for tests
  gem 'faker'# generate fake datas
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end