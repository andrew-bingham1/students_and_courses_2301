class Student
attr_reader :details, :name, :age, :scores
  def initialize(details)
   @details = details
   @name = details.values.first
   @age = details.values.last
   @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    scores.sum.fdiv(scores.size)
  end
end
