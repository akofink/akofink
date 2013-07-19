ruby '2.0.0'

source 'https://rubygems.org'

gem 'rails', '>=4.0.0'

group :production do
  gem 'pg'
  gem 'activerecord-postgresql-adapter'
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

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'

  gem 'less-rails'
  gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails'
end

gem 'jquery-rails'

gem 'redcarpet'
