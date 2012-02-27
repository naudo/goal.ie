source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'nested_form', git: "https://github.com/ryanb/nested_form.git"
gem 'devise', '~> 2.0.0'


group :production do
	gem 'pg'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem "twitter-bootstrap-rails", "~> 2.0.1.0"
  gem 'heroku'
  gem 'ruby-debug19', require: "ruby-debug"

end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.8.0'
end

