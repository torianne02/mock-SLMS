class Course
  attr_reader :key, :limit

  @@all = []

  def initialize(key, limit)
    @key = key
    @limit = limit
    @students = []
    @@all << self
  end 

  def self.all
    @@all 
  end 

  def hit_limit?
    @students.length < @limit ? false : true
  end
end 