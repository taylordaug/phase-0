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