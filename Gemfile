source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

# ログイン機能
gem 'devise'

# 管理者画面
gem 'activeadmin'

# DeviseにBootstrapのスタイルを適用させる
gem 'devise-bootstrap-views', '~> 1.0'

# 多言語対応
gem 'devise-i18n'
gem 'rails-i18n', '~> 6.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'enum_help'

# マークダウン記法の文字列をHTMLに変換
gem 'redcarpet'

# シンタックスハイライト
gem 'coderay'