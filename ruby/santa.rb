class Santa 
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", 
							 "Dasher", 
							 "Dancer", 
							 "Prancer", 
							 "Vixen", 
							 "Comet", 
							 "Cupid", 
							 "Donner", 
							 "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		
	end
end
# create an array of genders
genders = ["male", "female", "agender", "transfemale", "transmale", "Prince"]

# create an array of ethnicities
ethnicities = ["White", "Indo-European", "Afroasiatic", "Semitic", "Native American", "Prince"]

# create an array of Santas
santas = []

puts "-----Iterating through santa attributes to identify Santa diversity-----\n"

gender.each do |gender|


santa = Santa.new
p santa.speak
p santa.eat_milk_and_cookies("oatmeal cookie")
