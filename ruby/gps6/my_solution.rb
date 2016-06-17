# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative drawing from another ruby file in the same respository
# require draws from another ruby file in the library and needs load path
# require_relative 'state_data'

# defining a class for VirusPredictor
class VirusPredictor

  # initializing the class of VirusPredictor and its attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  

  # uses predicted_deaths and speed_of_spread and uses the STATE DATA hash as input
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# renders everything below it as a private method
private

  # uses population_density to predict the number of deaths in each state with conditional 
  # statements and prints the number of deaths per state at the end of the method
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 200..250
        number_of_deaths = (@population * 0.4).floor
      when 150..199
        number_of_deaths = (@population * 0.3).floor
      when 100..149
        number_of_deaths = (@population *0.2).floor
      when 99..50
        number_of_deaths = (@population * 0.1).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end
           
      
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes population density and calculates the speed of how fast the virus will spread in months
  # prints the speed of spread at the end of the method
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
#     speed = 0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end
    
    
    speed = 0
    
    speed += if @population_density >= 200
                0.5
             elsif @population_density >= 150
                1
             elsif @population_density >= 100
                1.5
             elsif @population_density >= 50
                2
             else
                2.5
             end
    

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, population_info|
  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  state.virus_effects
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