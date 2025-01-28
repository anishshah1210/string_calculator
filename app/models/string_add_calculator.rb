class StringAddCalculator
  def add(numbers)
    return 0 if numbers.empty?
    numbers = numbers.gsub("\n", ",")
    p numbers
    return numbers.split(',').map(&:to_i).sum
  end
end
