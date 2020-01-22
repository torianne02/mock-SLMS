class Course
  attr_reader :key, :limit
  attr_accessor :students

  @@all = []

  def initialize(key, limit)
    @key = key
    @limit = limit
    @students = []
    @waitlist = {}
    @@all << self
  end 

  def self.all
    @@all 
  end 

  def hit_limit?
    @students.length < @limit ? false : true
  end

  def add_to_waitlist(student)
    # adds student name and waitlist position
    # not full proof adding length as key // if someone where to be removed from waitlist I'd need to update all keys by -= 1
    @waitlist[student] = @waitlist.length
  end
end 