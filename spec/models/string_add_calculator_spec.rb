require 'rails_helper'

RSpec.describe StringAddCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for empty string' do
      calc  = StringAddCalculator.new
      expect(calc.add('')).to eq(0)
    end

    it 'returns single number' do
      calc  = StringAddCalculator.new
      expect(calc.add('3')).to eq(3)
    end

    it 'sum  numbers' do
      calc  = StringAddCalculator.new
      expect(calc.add('1,3,8')).to eq(12)
    end

    it "return sum when a new line character string" do
      calc = StringAddCalculator.new
      expect(calc.add("1\n2,3")).to eq(6)
    end
    
    it "return sum when custom delimiter in string" do
      calc = StringAddCalculator.new
      expect(calc.add("//;\n1;2")).to eq(3)
    end
    
  end
end
