class CoursesController < ApplicationController

  post '/courses' do
    key = params['key']
    limit = params['limit']

    Course.new(key, limit)
  end
end 