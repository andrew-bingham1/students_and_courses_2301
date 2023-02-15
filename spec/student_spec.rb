require 'rspec'
require './lib/student'

RSpec.describe do 
  describe '#initialize' do
    it 'can initialize' do 
      student = Student.new({name: "Morgan", age: 21}) 

      expect(student).to be_an_instance_of Student
    end

    it 'has a name' do 
      student = Student.new({name: "Morgan", age: 21}) 

      expect(student.name).to eq("Morgan")
    end

    it 'has an age' do
      student = Student.new({name: "Morgan", age: 21})
      
      expect(student.age).to eq(21)
    end
  end

  describe '#scores' do
    it 'can check scores'
      student = Student.new({name: "Morgan", age: 21})

      expect(student.scores).to eq([])
  end
end