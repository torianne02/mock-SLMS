require 'yaml'

class StudentsController < ApplicationController
  get '/students' do
    Student.all.to_yaml
  end 

  post '/students' do
    Student.new(params['id'], params['limit'])
  end

  post '/students/:id/enroll'
    @student = Student.all.find { |s| s.id == params[:id] }
    @course = Course.all.find { |c| c.key == params['course_key']}

    if @student.hit_limit? == false && @course.hit_limit? == false
      @student.courses << [@course, 'Enrolled']
      @course.students << @student
    elsif @student.hit_limit == false && @course.hit_limit? == true
      @student.courses << [@course, 'Waitlisted']
      @course.waitlist(@student)
    else 
      flash[:message] = "Sorry! It looks like this student has hit their course limit"
    end 
end 