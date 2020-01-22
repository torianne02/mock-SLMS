class Student
  attr_reader :name, :limit
  attr_accessor :courses

  def initialize(name, limit)
    @name = name
    @limit = limit
    @courses = []
  end 
end 

