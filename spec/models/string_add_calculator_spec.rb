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

    it "raise exemption when pass negative number(s)" do
      calc = StringAddCalculator.new
      expect { calc.add("1,-2,-3") }.to raise_error("Negative numbers not allowed: -2, -3")
    end

    it "ignore number when it is greater than 1000" do
      calc = StringAddCalculator.new
      expect(calc.add("1001,5")).to eq(5)
    end

    it 'supports custom delimiter of any length' do
      calc = StringAddCalculator.new      
      expect(calc.add("//[***]\n1***2***3")).to eq(6)
      expect(calc.add("//[;;]\n1;;2;;3")).to eq(6)
    end

    it "different kind of deliminator in string" do
      calc = StringAddCalculator.new
      expect(calc.add("//[*][%]\n1*2%3")).to eq(6)
    end
    
  end
end
