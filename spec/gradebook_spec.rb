require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'can initialize' do
      gradebook = Gradebook.new("Prof. Goose")

      expect(gradebook).to be_a Gradebook
      expect(gradebook.instructor).to eq("Prof. Goose")
      expect(gradebook.courses).to eq([])
    end
  end

  describe '#add course' do
    it 'can add courses' do
      gradebook = Gradebook.new("Prof. Goose")
      course_1 = Course.new("Calculus", 2) 
      course_2 = Course.new("Geogrpahy", 5)

      gradebook.add_course(course_1)
      gradebook.add_course(course_2)

      expect(gradebook.courses.count).to eq(2)
    end
  end

  describe '#list_all_students' do
    it 'can list all students' do 
      gradebook = Gradebook.new("Prof. Goose")
      course_1 = Course.new("Calculus", 2) 
      student1 = Student.new({name: "Morgan", age: 21})
     
      gradebook.add_course(course_1)
      course_1.enroll(student1) 
    
      expect(gradebook.list_all_students["Calculus"].first).to be_a Student
    end
  end
end