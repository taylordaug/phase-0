=begin
def separate_comma(number)
  number = number.to_s
  array = number.split(//)

  num_length = array.length
  if num_length < 4
    return number
  end
  if num_length >=4 && num_length < 7
    array.insert(-4,",")
  else num_length >= 7
    array.insert(-4,",")
    array.insert(-8,",")
  end

new_array = array.join
p = new_array
end

if array.length % 3 = = 0
  array.insert((array.length-3),",")

=end

def separate_comma(number)
  number = number.to_s
  array = number.split(//)
  num_length = array.length

  if num_length < 4
    return number
  else
  counter = -1
    array.each do |x|
      x[counter]
      counter -= 1
      if counter % 4 == 0
      array.insert(counter,",")
      end
    end
  end

array = array.join

end

