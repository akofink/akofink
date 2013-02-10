source 'https://rubygems.org'

gem 'rails', '3.2.11'

group :production do
  gem 'pg'
  gem 'activerecord-postgresql-adapter'
end

group :test, :development do
  gem 'debugger'
  gem 'sqlite3'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'webrat'
  gem 'rspec-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'