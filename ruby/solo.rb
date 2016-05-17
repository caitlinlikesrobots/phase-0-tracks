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

class Perfect_Pet 
	attr_reader :color
	attr_accessor :name, :description
	def initialize(name)
	@name = name
	@color = color
	@description = description

	puts "Congratulations! Your Perfect Pet ™ is named #{@name}, and it loves you! \n Love!"
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

p pet = Perfect_Pet.new("Harold")
p pet.hug
p pet.high_five
p pet.feed

