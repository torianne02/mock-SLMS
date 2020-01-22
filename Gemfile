# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'rake'
# to run the application in browser
gem 'shotgun'
# for debugging
gem 'pry'
# for error messages
gem 'sinatra-flash'
# helps load dependencies
gem 'require_all'
# fast http server
gem 'thin'
# model interface for non-Active Record models
gem 'activemodel'

# testing environment
group :test do 
  gem 'rspec'
  gem 'rack-test'
end 