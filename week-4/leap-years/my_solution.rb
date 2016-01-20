# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)
  if year.to_i % 100 == 0 && year.to_i % 400 != 0
    return false
  elsif year.to_i % 4 != 0
    return false
  else
    return true
  end
end