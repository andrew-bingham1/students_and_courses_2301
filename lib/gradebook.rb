class Gradebook
  attr_reader :instructor, :courses
  

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end
  
  def list_all_students
    courses.each_with_object({}) do |course, hash|
      hash[course.name] = course.students
    end
  end
end
