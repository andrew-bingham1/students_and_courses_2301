class Student
attr_reader :details, :name, :age
  def initialize(details)
   @details = details
   @name = details.values.first
   @age = details.values.last
  end
end
