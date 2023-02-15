require 'rspec'
require './lib/student'
require './lib/course'

RSpec.describe Course do
  describe '#initialize' do
    it 'can initialize' do 
      course = Course.new("Calculus", 2) 

      expect(course).to be_a Course
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
      expect(course.students).to eq([])
      expect(course.full?).to eq (false)
    end
  end

  describe '#enroll' do
    it 'can enroll students' do
      course = Course.new("Calculus", 2) 
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})

      course.enroll(student1) 
      course.enroll(student2) 

      expect(course.students.count).to eq(2)
      expect(course.students.first).to be_a Student
      expect(course.full?).to eq(true)
    end

  end

end