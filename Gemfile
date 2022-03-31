source "https://rubygems.org"

git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.7.1"

gem "active_storage_validations", "0.8.2"
gem "bcrypt", "~> 3.1", ">= 3.1.12"
gem "bootsnap", ">= 1.4.2", require: false
gem "bootstrap-sass", "~> 3.4.1"
gem "config"
gem "faker"
gem "figaro"
gem "grape"
gem "grape-entity"
gem "grape_on_rails_routes"
gem "image_processing"
gem "jbuilder", "~> 2.7"
gem "jquery-rails"
gem "jwt"
gem "kaminari"
gem "mini_magick"
gem "mysql2", "~> 0.5.2"
gem "puma", "~> 4.3"
gem "rails", "~> 6.0.3", ">= 6.0.3.2"
gem "rails-i18n"
gem "sass-rails", ">= 6"
gem "sassc-rails", ">= 2.1.0"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry", "~> 0.12.2"
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :development, :test do
  gem "rails_best_practices"
  gem "rubocop", "~> 0.74.0", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "rubocop-rails", "~> 2.3.2", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
