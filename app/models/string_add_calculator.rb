class StringAddCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiters =[","]
    if numbers.start_with?('//')
      delimiters = [numbers[2]]
      numbers = numbers.split("\n", 2)[1]
      p numbers
    else
      numbers = numbers.gsub("\n", ",")
    end  
    delimiter_pattern = "[#{delimiters.join}]+"
    
    numbers = numbers.split(Regexp.new(delimiter_pattern))
  p numbers
    return numbers.map(&:to_i).sum
  end
end
