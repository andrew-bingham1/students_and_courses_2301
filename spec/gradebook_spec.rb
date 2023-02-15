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
    end
  end
end