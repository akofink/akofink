ruby '2.0.0'

source 'https://rubygems.org'

gem 'rails', '>=4.0.0'

gem 'anjlab-bootstrap-rails',
  require: 'bootstrap-rails',
  github: 'anjlab/bootstrap-rails',
  branch: '3.0.0'
gem 'bcrypt-ruby'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'less-rails'
gem 'redcarpet'
gem 'sass'
gem 'sass-rails'
gem 'turbolinks'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier'
end

group :production do
  gem 'pg'
  gem 'activerecord-postgresql-adapter'
  gem 'rails_12factor'
end

group :test, :development do
  gem 'debugger'
  gem 'coveralls', require: false
  gem 'guard-rspec'
  gem 'sqlite3'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'database_cleaner'
  gem 'webrat'
  gem 'rspec-rails'
end
