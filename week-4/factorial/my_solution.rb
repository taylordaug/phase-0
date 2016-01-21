# Factorial

# I worked on this challenge with Mike London.


# Your Solution Below

def factorial(num)
  if num > 0
  #until num == 1
    return num * factorial(num - 1)
  else
    return 1
  end
end


=begin
  num2 = num.to_i - 1
  num2 -= 1
  if num > 0
    return num * num2
  elsif num == 0
    return 1
  else
    return nil
  end
end
=end


