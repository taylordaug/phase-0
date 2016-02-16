# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# input: nested array (sample board that has xs in it)
# output: boolean(win present or win not present?) + string("BINGO!" if bingo is there)

# steps:
# IF 5 xs in a row in any formation, return TRUE and print "BINGO!" to the console
# IF no bingo, return FALSE, don't print anything
# check for horizonal
# check for vertical
# check for diagnoal




# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# array = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer
#   def initialize(array)
#     @array = array
#   end

#   def bingohorizontal
#     counter = 0
#     @array.each do |inner_array|
#       if inner_array == ['x', 'x', 'x', 'x', 'x']
#       counter += 1
#       end
#     end
#     if counter == 1
#       puts "BINGO!"
#     else
#         puts "NO BINGO!"
#     end
#   end

#   def bingolefttoright
#     bingoarray = []
#     @array.each_with_index do |x, index|
#       if x[index] == 'x'
#         bingoarray << "BINGO!"
#       end
#     end
#       if bingoarray == ["BINGO!","BINGO!","BINGO!","BINGO!","BINGO!"]
#         puts "BINGO!"
#       else
#         puts "NO BINGO!"
#       end
#   end

#   def bingorighttoleft
#     @array.reverse!
#     bingoarray = []
#     @array.each_with_index do |x, index|
#       if x[index] == 'x'
#         bingoarray << "BINGO!"
#       end
#     end
#       if bingoarray == ["BINGO!","BINGO!","BINGO!","BINGO!","BINGO!"]
#         puts "BINGO!"
#       else
#         puts "NO BINGO!"
#       end
#   end

#   def bingovertical
#   bingoarray = []
#   @array.each do |x|
#       x.each_with_index do |item, index|
#         if x[index] == "x"
#         bingoarray << "BINGO!"
#         end
#       end
#     end
#       if bingoarray == ["BINGO!","BINGO!","BINGO!","BINGO!","BINGO!"]
#         puts "BINGO!"
#       else
#         puts "NO BINGO!"
#       end
#     end

# end




# Refactored Solution
class BingoScorer
  def initialize(array)
    @array = array
  end

  def match
  #bingohorizontal
    counter = 0
    @array.each do |inner_array|
      if inner_array == ['x', 'x', 'x', 'x', 'x']
      puts "BINGO!"
      end
    end

  #bingolefttoright
    # @array.reverse!
    counter_2 = 0
    @array.each_with_index do |x, index|
      if x[index] == 'x'
        counter_2 += 1
      end
    end
      if counter_2 == 5
        puts "BINGO!"
      end

  #bingorighttoleft
    @array.reverse!
    counter_3 = 0
    @array.each_with_index do |x, index|
      if x[index] == 'x'
        counter_3 += 1
      end
    end
      if counter_3 == 5
        puts "BINGO!"
      end

  #bingovertical
  array_1 = []
  array_2 = []
  array_3 = []
  array_4 = []
  array_5 = []
  @array.each do |x|
    array_1 << x[0]
    array_2 << x[1]
    array_3 << x[2]
    array_4 << x[3]
    array_5 << x[4]
  end
   if array_1 == ['x','x','x','x','x'] ||
       array_2 == ['x','x','x','x','x'] ||
       array_3 == ['x','x','x','x','x'] ||
       array_4 == ['x','x','x','x','x'] ||
       array_5 == ['x','x','x','x','x']
      puts "BINGO!"
    end
  end
end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
# array =
#   [[47, 44, 'x', 22, 88],
#    [22, 69, 'x', 34, 73],
#    [83, 33, 'x', 22, 57],
#    [25, 31, 'x', 22, 51],
#    [75, 70, 'x', 22, 55]]


# array = [['x', 44, 71, 8, 88],
#         [22, 'x', 75, 65, 73],
#         [83, 85, 'x', 89, 57],
#         [25, 31, 96, 'x', 51],
#         [75, 70, 54, 80, 'x']]

# array = [[44, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]

array = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]


new_game = BingoScorer.new(array)
new_game.match


# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed iterating over nested arrays, using multiple each methods, and using counters.
# What is still confusing to you about Ruby?
# I'm having a bit of trouble with the placement of counters to be able to count up through an iteration. I'm also struggling with multiple nested each methods.
# What are you going to study to get more prepared for Phase 1?
# By printing all aspects throughout my loops, I'll be able to figure out how to more flawlessly incorporate counters within iterators. Accessing the same index throughout nested arrays was a challenge and I had to use a lot of variables - I'm going to practice accessing these using multiple each methods.