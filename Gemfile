source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'jbuilder', '~> 2.5'
gem 'sprockets', '~> 3.7', '>= 3.7.2'
gem 'devise'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'activeadmin', '~> 1.3', '>= 1.3.1'

# gem 'mini_magick', '~> 4.8'

# gem 'capistrano-rails', group: :development

gem 'bootsnap', '>= 1.1.0', require: false


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
