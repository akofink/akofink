ruby '2.0.0'

source 'https://rubygems.org'

gem 'rails', '>=4.0.0'

gem 'anjlab-bootstrap-rails',
  require: 'bootstrap-rails',
  github: 'anjlab/bootstrap-rails',
  branch: '3.0.0'
gem 'jquery-rails'
gem 'less-rails'
gem 'redcarpet'
gem 'sass-rails'

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
  gem 'sqlite3'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'database_cleaner'
  gem 'webrat'
  gem 'rspec-rails'

  gem 'guard-rspec'
end
