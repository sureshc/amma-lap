source 'https://rubygems.org'

# Force HTTPS for github-source gems.
# This is a temporary workaround - remove when bundler version is >=2.0
# @see https://github.com/bundler/bundler/issues/4978
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'rails-controller-testing'
gem 'sinatra', '~> 2.0.0.beta2', require: 'sinatra/base'

gem 'mysql2', '~> 0.3.13'
# Use Puma as the app server
gem 'puma', '~> 3.0'
group :development do
  gem 'annotate'
  gem 'rack-mini-profiler'
  gem 'ruby-progressbar', require: false
  gem 'thin'
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
# Use SCSS for stylesheets.
# Ref: https://github.com/rails/sass-rails/pull/386
gem 'sass-rails', github: 'wjordan/sass-rails', ref: 'frozen-array-fix'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use React as the JavaScript library.
gem 'react-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
