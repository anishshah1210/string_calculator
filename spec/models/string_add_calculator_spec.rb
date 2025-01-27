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

  end
end
