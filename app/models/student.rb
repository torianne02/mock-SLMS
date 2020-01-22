class Student
  attr_reader :name, :limit

  def initialize(name, limit)
    @name = name
    @limit = limit
    @courses = []
  end 
end 

