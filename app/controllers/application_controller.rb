require '.config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  use Rack::flash

  # normally GET '/' would reside here as a home page // not needed for this project

  # helper methods will go here if needed 
end 