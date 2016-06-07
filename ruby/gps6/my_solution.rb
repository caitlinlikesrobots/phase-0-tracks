# Virus Predictor

# I worked on this challenge with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# links to the relative state_data information in separate ruby file
require_relative 'state_data'

class VirusPredictor

# initializes each instance variable  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  

# method that calls on other instance methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
private
# method that calculates the number of deaths directly related to population density based on a set percentage of death rate
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 150..200 
         number_of_deaths = (@population * 0.4).floor
    when 100..149
         number_of_deaths = (@population * 0.3).floor
    when 99..50
         number_of_deaths = (@population * 0.1).floor
    else
        number_of_deaths = (@population * 0.05).floor
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# method that calculates the speed of spread of virus in months based on population density and set speed integral 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
     case @population_density 
     when 150..200
      speed = 0.5
     when 100..149
      speed = 1
     when 50..99
      speed = 1.5
    when 49..0
      speed = 2
     else 
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# state = VirusPredictor.new
STATE_DATA.each do |state_name, demographics|  
  state = VirusPredictor.new(state_name, demographics[:population_density], demographics[:population])
  state.virus_effects
end


# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  The immediate difference is the constant variable of STATE_DATA (recognized by the caps) that allows the hash to be accessed globally
  and not changed within the program. 
  Also, in this case of a nested hash, we have a key (state) that is a string and rocket to the hash of keys and values and then two other 
  keys within each state hash that takes symbols (population and population density) and allows the user to access those keys more easily. 
What does require_relative do? How is it different from require?
  require_relative links the ruby program to the STATE_DATA hash in a way that allows the program to access that information implicitly. 
  require is a method that allows the ruby program to access outside single features that exist in the load path (which needs to be explicitly written) 
  of your ruby library. 
What are some ways to iterate through a hash?
  .each, .keys, .values are all ways to iterate through a hash in each peculiar way. 
When refactoring virus_effects, what stood out to you about the variables, if anything?
  since the variables for virus_effects were actually attributes witin the class, they weren't needed as arguments for this method. 
What concept did you most solidify in this challenge?
  I got to a clearer understanding of iteration in this challenge, and I learned about other conditional statements such as case. 
=end