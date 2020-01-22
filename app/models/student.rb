class Student
  attr_reader :name, :limit
  attr_accessor :courses

  @@all = []

  def initialize(name, limit)
    @name = name
    @limit = limit
    @courses = []
    @@all << self
  end 

  def self.all
    @@all
  end 
end 

