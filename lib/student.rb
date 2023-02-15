class Student
attr_reader :details, :name, :age, :scores
# attr_accessor :scores
  def initialize(details)
   @details = details
   @name = details.values.first
   @age = details.values.last
   @scores = []
  end
end
