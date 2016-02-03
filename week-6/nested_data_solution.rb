# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

 number_array.each {|x|
  if x.kind_of? Integer
    puts x+5
  else x.kind_of? Array
    x.each {|inner| puts inner + 5}
  end
}



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!

startup_names.each {|x| puts x + "ly"}


=begin
p startup_names.each {|x|
  if x.kind_of? String
    puts x + "ly"
  else x.kind_of? Array
    unless x.kind_of? String
      x.each{|inner| puts inner + "ly"}
    end
  end
}
=end

=begin
Reflection
What are some general rules you can apply to nested arrays?
You must access the nested arrays in the order in which they are nested. Access the outer array first, then the next, and then keep going down until you hit the index you are trying to get.

What are some ways you can iterate over nested arrays?
You can use an if statement. If the element is an array, then iterate a second time over it, but if the element is just an integer or string, iterate over it once normally.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
One method to flatten arrays that contain subarrays is flatten!. This returns the same values in one array with no subarrays. For an array more than 2-D, this is much easier to flatten it and then iterate over.

=end