class Student
  attr_reader :id, :limit
  attr_accessor :courses

  @@all = []

  def initialize(id, limit)
    @id = id
    @limit = limit
    @courses = []
    @@all << self
  end 

  def self.all
    @@all
  end 

  def hit_limit?
    @courses.length < @limit ? false : true
  end
end 