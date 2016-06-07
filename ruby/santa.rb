class Santa 
	attr_reader :ethnicity, :age
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a great #{cookie_type} cookie!"
	end

	def celebrate_birthday(age)
		@age += 1
	end

	def get_mad_at(reindeer_name)
		puts "Santa is disappointed in #{reindeer_name}, and he knows why."
		reindeer_idx = @reindeer_ranking.index(reindeer_name)
		return @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(reindeer_idx))
	end
# # Setter method
# 	def gender=(new_gender)
# 		@gender = new_gender
# 	end
# # Getter methods
# 	def age 
# 		@age
# 	end

# 	def ethnicity
# 		@ethnicity
# 	end
end

santa = Santa.new
p santa.speak
p santa.eat_milk_and_cookies("oatmeal")
p santa.celebrate_birthday


10_000.times { 
	santa = Santa.new(genders.sample, ethnicities.sample)
	p santa.gender
	p santa.ethnicity
	p santa.age = rand(140)
 }
puts "-----Iterating through Santa attributes to identify Santa diversity!-----\n"

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

