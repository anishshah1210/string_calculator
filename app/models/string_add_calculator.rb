class StringAddCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.split(',').map(&:to_i).sum
  end
end
