class Course
  attr_reader :key, :limit

  @@all = []

  def initialize(key, limit)
    @key = key
    @limit = limit
    @@all << self
  end 

  def self.all
    @@all 
  end 
end 