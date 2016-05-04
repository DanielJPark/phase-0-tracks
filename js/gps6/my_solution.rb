# Virus Predictor

# I worked on this challenge [Craig Waterman, with: Dan Park ].
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
#
#


#require_relative links the information on the State_data file to this file. 
#needs to be in the same directory as the file that uses it.
#requre is when you requre an external set of code such as a library that Ruby does not have built in and you want to use in this file. 
require_relative 'state_data'

class VirusPredictor

  #initializes a new instance of class, taking three arguments and setting those arguments to instance variables
  def initialize(state)#(state_of_origin, population_density, population)
    @state = state#_of_origin
    @population = STATE_DATA[state][:population]#population
    @population_density = STATE_DATA[state][:population_density]#population_density
  end

  #takes arguments from STATE_DATA puts them into 2 methods, predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private 
# takes 3 arguements, predicts number of deaths based on the population density and population. Then prints a statement saying how many deaths will occur within that state. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
        rate = 0.4
    elsif @population_density >= 150
        rate = 0.3
    elsif @population_density >= 100
        rate =  0.2
    elsif @population_density >= 50
        rate = 0.1
    else 
        rate = 0.05
    end

    @number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end
#takes two arguments calculates how quickly the virus will spread across the state based on population density.  Prints a state about how quickly the virus spreads across the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
        @speed = 0.5
    elsif @population_density >= 150
        @speed = 1
    elsif @population_density >= 100
        @speed = 1.5
    elsif @population_density >= 50
        @speed = 2
    else
        @speed = 2.5
    end

    puts " and will spread across the state in #{@speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, hash|
  VirusPredictor.new(state).virus_effects
#   p state
#   p hash[:population_density]
#   p hash[:population]
end




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The first type is a string that points to the value. This creates a new object id everytime it is called.
#   The second type is a symbol that points to a value. Using the symbol has one object id that does not change regardless of how often is it called, thus making it more efficient.

# What does require_relative do? How is it different from require?
#    Require requires you to provide a direct path to the referenced file, where as require_relative looks for the file in the same directory and in this case does not even need the file extension. Require also is used when you requre an external set of code such as a library that Ruby does not have built in and you want to use within this file.

# What are some ways to iterate through a hash?
#   .each do

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  
#   The instances variables were redundant and not needed.

# What concept did you most solidify in this challenge?

#   Refactoring, creating instance variables, looping with .each and referencing nested data structures.