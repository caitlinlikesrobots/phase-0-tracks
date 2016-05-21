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
	attr_reader :birthday
	attr_accessor :name, :color

	class << self
	
	def initialize(name)
	@name = name
	@color = color
	@birthday = birthday

	puts "Congratulations! Your Perfect Pet™ is named #{@name}, and it loves you! \n Love!"
	end

	def hug
		puts "When you are lonely, reach out for #{@name}, \n and it will hug you back! \n Comfort!"
	end

	def high_five
		puts "You hold up your hand and #{@name} holds up its soft, soft paw. \n Your appendages connect! \n Friendship!"
	end

	def feed
		pet_hungry = ""
		while pet_hungry != "stop"
			puts "Is #{@name} hungry? It will eat anything you give it!\nEnter 'stop' when #{@name} is full!"
			pet_hungry = gets.chomp.downcase
			if pet_hungry == "stop"
				break
			end
			puts "What would you like to feed #{@name}?"
			food = gets.chomp
			puts "#{@name} ate a #{food}."
		end
		puts "#{name} is stuffed!"
	end
end

# UI *-------------------------------------------------------* UI



# ßerfect_pets = []

loop do
#Welcomes the user to the Perfect Pet App
puts "Welcome to Perfect Pet™ headquarters!\n We are here to guide you through making\n your Perfect Pet™!"

#prompts user to name their first pet

puts "What would you like to name your Perfect Pet™?"
@name = gets.chomp
pet = Perfect_Pet.new(@name)
#prompts user to choose a Perfect Pet color 

puts "What color would you like your Perfect Pet™ to be?"
@color = gets.chomp.downcase
puts "Wow look at how #{@color} #{@name} is! Great choice!"

#gives the user their Perfect Pet's exact birthday

@birthday = Time.now
puts "#{@name}'s birthday is #{@birthday}! Don't forget to get it a gift.\n We also hear it loves parties!"

#walks user through Perfect Pet abilities

puts "Would you like to hug #{@name}? (enter yes or no)"
	hugs = gets.chomp.downcase
	if hugs == "yes"
	pet.hug
	else puts "That is ok. \nHugs are pretty intimate for a pet you just met."
	end

puts "Would you like to high-five #{@name}? (enter yes or no)"
	fiver = gets.chomp.downcase
	if fiver == "yes"
	pet.high_five
	else puts "That is ok. \nHigh-fives are difficult to master.\nIt is all in the elbow!"
	end
puts "Would you like to feed #{@name}? (enter yes or no)"
	feed_pet = gets.chomp.downcase
	if feed_pet == "yes"
	pet.feed
	else puts "That is ok. #{@name} ate earlier."
	end 

#Asks user if they would like to make another Perfect Pet
#IF yes, call pet_creator again
puts "Would you like to create another Perfect Pet™? \n(Enter 'yes' to make a new pet or enter 'quit' to exit.)"
	pet = gets.chomp.downcase
	if pet != "quit"
	else puts "Thank you very much.\nEnjoy your Perfect Pet™!"
	   break
	end	 
end

#------------* Prints Pets Made *------------
# Clear screen
system 'clear'
Perfect_Pet do |pet|
puts "Your Perfect Pet is #{@name} who is #{@color}\n and their birthday is #{@birthday}!"
end



