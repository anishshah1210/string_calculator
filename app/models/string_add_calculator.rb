class StringAddCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiters =[","]
    if numbers.start_with?("//[")
      delimiters = numbers.scan(/\[(.*?)\]/).flatten
      numbers = numbers.split("\n", 2)[1]
    elsif numbers.start_with?('//')
      delimiters = [numbers[2]]
      numbers = numbers.split("\n", 2)[1]
      p numbers
    else
      numbers = numbers.gsub("\n", ",")
    end  
    p numbers
    delimiter_pattern = "[#{delimiters.join}]+"
    
    numbers = numbers.split(Regexp.new(delimiter_pattern))

    negative_numbers = numbers.select { |num| num.to_i < 0 }
    if negative_numbers.any?
      raise "Negative numbers not allowed: #{negative_numbers.join(', ')}"
    end
    numbers  = numbers.select { |num| num.to_i < 1001 }


    return numbers.map(&:to_i).sum
  end
end
