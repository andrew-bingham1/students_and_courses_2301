class Course
  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students.count == @capacity
      return true
    else
      return false
    end

  end
  
end
