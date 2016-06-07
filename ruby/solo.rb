# Design a Perfect Pet Class
=begin Perfect Pet will have three alterable attributes:
	*color
	*description
	*name
Perfect Pet will also have three methods:
	*hug your Perfect Pet
	*feed your Perfect Pet
	*high-five your Perfect Pet
Create Perfect Pet User App to make your pet truly Perfect!
=end

# Create Perfect Pet class
class Perfect_Pet 
	attr_reader :food
	attr_accessor :name, :color, :birthday

	
	def initialize(name, color, birthday)
	@name = name
	@color = color
	@birthday = birthday
	@food = food
	end

	def hug
		puts "When you are lonely, reach out for your Perfect Pet™, \n and it will hug you back! \n Comfort!"
	end

	def high_five
		puts "You hold up your hand and your Perfect Pet™ holds up its soft, soft paw. \n Your appendages connect! \n Friendship!"
	end

	def feed
		pet_hungry = ""
		while pet_hungry != "stop"
			puts "Is your Perfect Pet™ hungry? It will eat anything you give it!\nEnter 'stop' when your Perfect Pet™ is full!"
			pet_hungry = gets.chomp.downcase
			if pet_hungry == "stop"
				break
			end
			puts "What would you like to feed your Perfect Pet™?"
			food = gets.chomp
			puts "Your Perfect Pet™ ate a #{@food}."
		end
		puts "Your Perfect Pet™ is stuffed!"
	end
end

# UI *-------------------------------------------------------* UI

#Welcomes the user to the Perfect Pet App
puts "Welcome to Perfect Pet™ headquarters!\n We are here to guide you through making\n your Perfect Pet™!"

#Prompts user to say how many Perfect Pets they would like to make
puts "How many Perfect Pets™ would you like to make today?"
pets = []
pet_number = gets.chomp.to_i

#Creates user loop for pet creation
pet_number.times do |pet|

#prompts user to name their first pet
puts "What would you like to name your Perfect Pet™?"
name = gets.chomp
puts "Congratulations! Your Perfect Pet™ is named #{name}, and it loves you! \n Love!" 

#prompts user to choose a Perfect Pet color 

puts "What color would you like your Perfect Pet™ to be?"
color = gets.chomp.downcase
puts "Wow look at how #{color} #{name} is! Great choice!"

#gives the user their Perfect Pet's exact birthday

birthday = Time.now
puts "#{name}'s birthday is #{birthday}! Don't forget to get it a gift.\n We also hear it loves parties!"

#Creates an instance of Perfect Pet
pet = Perfect_Pet.new(name, color, birthday)
#walks user through Perfect Pet abilities

puts "Would you like to hug #{name}? (enter yes or no)"
	hugs = gets.chomp.downcase
	if hugs == "yes"
	pet.hug
	else puts "That is ok. \nHugs are pretty intimate for a pet you just met."
	end

puts "Would you like to high-five #{name}? (enter yes or no)"
	fiver = gets.chomp.downcase
	if fiver == "yes"
	pet.high_five
	else puts "That is ok. \nHigh-fives are difficult to master.\nIt is all in the elbow!"
	end
puts "Would you like to feed #{name}? (enter yes or no)"
	feed_pet = gets.chomp.downcase
	if feed_pet == "yes"
	pet.feed
	else puts "That is ok. #{name} ate earlier."
	end
puts "You have a new Perfect Pet™!\n Best Friends!"

pets << pet
end
puts "Thank you very much.\nEnjoy your Perfect Pet™!"


#------------* Prints Pets Made *----------
system 'clear'
pets.each {|pet| puts "Your Perfect Pet is #{pet.name} who is #{pet.color}\n and their birthday is #{pet.birthday}!"}
