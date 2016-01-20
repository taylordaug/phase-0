# Calculate a Grade

# I worked on this challenge with Ryan Smith.


# Your Solution Below

def get_grade(average)
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else average < 60
    return "F"
  end
end