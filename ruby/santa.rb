class Santa 
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph","Dasher","Dancer","Prancer","Vixen","Comet","Cupid","Donner","Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday(age)
		puts @age += 1	
	end

	def get_mad_at(reindeer_name)
		puts "Santa is disappointed in #{reindeer_name}, and he knows why."
		reindeer_idx = @reindeer_ranking.index(reindeer_name)
		return @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(reindeer_idx))
	end
end
# create an array of genders
genders = ["male", 
		   "female", 
		   "agender", 
		   "transfemale", 
		   "transmale", 
		   "Prince"]

# create an array of ethnicities
ethnicities = ["Latino", 
			   "Indo-European", 
			   "Afroasiatic", 
			   "Semitic", 
			   "Native American", 
			   "Prince"]


1000.times { 
	santa = Santa.new(genders.sample, ethnicities.sample)
	puts "This Santa is #{santa.gender}, #{santa.ethnicity} and is #{santa.age = rand(140)} years old."
	# p santa.get_mad_at("Vixen")
 }
puts "-----Iterating through Santa attributes to identify Santa diversity!-----\n"

=begin attempted loop through gender and ethnicity arrays
# create an array of diverse Santas
# santas = []


# genders.each do |gender|
# 	puts "I'm Santa and my gender is #{@gender}."
# 	santas << Santa.new(@gender)
# 	puts "-------------------------------------"
# end

# ethnicities.each do |ethnicity|
# 	puts "I'm Santa and my ethnicity is #{@ethnicity}."
# 	santas << Santa.new(@ethnicity)
# 	puts "-------------------------------------"
# end
=end

# santa = Santa.new
# p santa.speak
# p santa.eat_milk_and_cookies("oatmeal cookie")
# p santa.get_mad_at
# p @reindeer_ranking 