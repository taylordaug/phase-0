# Your Names
# 1) Taylor Daugherty
# 2) no pair

# I spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

#REFACTOR Error counter is counting down if item passed in to make doesn't match one of the items that is an option to make. Could refactor to just check if item to make is equal to one of the items that is possible to make.
def serving_size_calc(item_to_make, servings_you_want) #change this argument
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} # how many people we can serve

if !library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
end
#serving size is how many per serving
serving_size = library[item_to_make]#returns servings in array form - this is extra we don't need that

remaining_servings = servings_you_want % serving_size

# #LOOKS OKAY: looking at how many ingredients are leftover, telling you how many items you can make, and how many ingredients you have left. at the bottom we can add suggested baking items with the remaining ingredients
  case remaining_servings
  when 0
    return "Calculations complete: Make #{servings_you_want / serving_size} of the #{item_to_make}s"
  when 1
    return "Calculations complete: Make #{servings_you_want / serving_size}of the#{item_to_make}s, you have one person left unfed. Bake one cookie to serve this person." #leftover people, correspond to how many servings other foods make (1 extra person gets a cookie) OR make more than we need, leftover pieces after you feed everybody - what you can make with remainder. 12 people, make one pie and one cake.
  when 5
    return "Calculations complete: Make #{servings_you_want / serving_size} of the#{item_to_make}s, you have 5 people left unfed. Bake a cake to serve them."
  when 7
    return "Calculations complete: Make #{servings_you_want / serving_size} of the #{item_to_make}s, you have 7 people left unfed. Bake a pie to serve them."
  else
    return "Calculations complete: Make #{servings_you_want / serving_size} of the #{item_to_make}s. Make #{remaining_servings} cookies to serve the extras."
  end
end

#p serving_size_calc("pie", 15)
#p serving_size_calc("pie", 8)
#p serving_size_calc("cake", 5)
#p serving_size_calc("cake", 7)
#p serving_size_calc("cookie", 1)
#p serving_size_calc("cookie", 5)
#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection