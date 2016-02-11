# Virus Predictor

# I worked on this challenge with Tori Huang.
# We spent 1 hour on this challenge.

require_relative 'state_data'
# EXPLANATION OF require_relative
# require_relative - specifies a file to pull information from / connect to
# HOW IT WORKS - links to the specified file path, basically goes to the
# file, pulls in all text, and runs code.
# require = absolute path VS require_relative = local path

# Fun Fact - Classes are "previewed" before running the program, so
# methods can be called above their definition.

# STATE_DATA - A Hash where the key is a String equal to the state and the
# value is a hash. Utilizes hash rocket.
# HASH VALUE IN STATE_DATA - The key is a symbol of either
# population_density or population, and the value is a float or integer.
# STATE_DATA is a constant and global, it cannot be called outside the
# file but it can be called anywhere within the file and all relative files.

class VirusPredictor
#initializes all instance variables to be used throughout the class
#takes in arguments you declare when you create a new VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls predicted_deaths and speed_of_spread methods and brings in the instance variables that were initialized as arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#when you declare private, methods below private can only be called in the class - can't call predicted_deaths OR speed_of_spread outside of the VirusPredictor class

#predicts death based on population density - at higher densities, the death rate is higher. This prints out the state and number of deaths based on this calculation. #floor method rounds down - makes float an integer

#output of these two methods are parts of sentences that go together, so you wouldn't want to call them separately. If you output something that wouldn't make sense outside another method in the class, make it private.
  def predicted_deaths
    # predicted deaths is solely based on population density
   case @population_density
     when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
     when 150...200
      number_of_deaths = (@population * 0.3).floor
     when 100...150
      number_of_deaths = (@population * 0.2).floor
     when 50...100
      number_of_deaths = (@population * 0.1).floor
     else
      number_of_deaths = (@population * 0.05).floor
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#predicts speed of spred of the virus based on population density - at higher densities, it takes less time to spread across the state. Then prints out speed in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# for x in STATE_DATA
    # create new VirusPredictor for state
    # call state.virus_effects
# end

STATE_DATA.each do |state,data|
  state_vp = VirusPredictor.new(state, data[:population_density], data[:population])
  state_vp.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The larger "hashy hash" is a hash containing a hash in its key value pairs. It uses the syntax of a string with a hash rocket pointing to a hash as a value. Inside the value hash, the key is a symbol, and the value is a float or integer.

# What does require_relative do? How is it different from require?
# require_relative specifies a file to pull information from and connect to. It links to the relative path of the file, pulls in all the text, and runs the code. Require pulls in other Ruby gems from your computer - it does not have to pull things in from the relative path, it is absolute.

# What are some ways to iterate through a hash?
# You can use .each do |key, value| to specify code blocks for either the key or value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Variables were called as arguments when they didn't need to be. All of the variables were initialized and used as instance variables, meaning there was no need to call them over and over as arguments - this was redunant.

# What concept did you most solidify in this challenge?
# Iterating through hashes in Ruby! I had gotten used to JavaScript for loops to iterate through objects in the course material this week, so it took a second to remember how to do this in Ruby. When in doubt, #each is always better to iterate in Ruby than a for loop.