require 'yaml'

class StudentsController < ApplicationController
  get '/students' do
    Student.all.to_json
  end 

  post '/students' do
    Student.new(params['id'], params['limit'])
  end

  post '/students/:id/enroll'
    student = Student.all.find { |s| s.id == params[:id] }
    course = Course.all.find { |c| c.key == params['course_key']}
    
    student.courses << 
end 