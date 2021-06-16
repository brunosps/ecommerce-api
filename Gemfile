source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "rails", "~> 6.1.3", ">= 6.1.3.2"

gem "bootsnap", ">= 1.4.4", require: false
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"

gem "devise", "~> 4.7", ">= 4.7.2"
gem "devise_token_auth", "~> 1.1", ">= 1.1.4"
gem "rack-cors", "~> 1.1.1"

# Rendering
gem "jbuilder", "~> 2.10.1"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 4.0.1"
  gem "shoulda-matchers", "~> 4.0"
end

group :development do
  gem "annotate"
  gem "listen", "~> 3.3"
  gem "spring"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
