class Course
  attr_reader :name, :limit

  @@all = []

  def initialize(name, limit)
    @name = name
    @limit = limit
    @@all << self
  end 

  def self.all
    @@all 
  end 
end 