class Santa 

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		# puts "initializing Santa instance..."
	end

		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a great #{cookie_type} cookie!"
	end
end

santa = Santa.new
p santa.speak
p santa.eat_milk_and_cookies("oatmeal")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

