require 'rails_helper'

RSpec.describe StringAddCalculator, type: :model do
  describe '#add' do
    it 'returns 0 for empty string' do
      calc  = StringAddCalculator.new
      expect(calc.add('')).to eq(0)
    end
  end
end
