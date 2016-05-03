puts "What is the hamster's name?"
	name=gets.chomp
puts "What is hamster's volume level, on scale from 1-10"
	volume=gets.to_i
puts "What is the hamster's fur color"
	color=gets.chomp
		

valid_input=false
while (not valid_input)
			puts "Is this hamster a good candidate for adoption?"
				adoption=gets.chomp.downcase
			if  adoption == 'yes'
				valid_input=true
				puts "Thank you, we'll do our best to find a home."
		  elsif adoption=="no"
				valid_input=true
				puts "That's unfortunate."
		  else  valid_input=false
				puts "I don't understand."	
			end
end

puts "What is the hamster's age? This can be left blank if you're not sure."
	age=gets.to_i
	if age == gets.chomp.empty?
		age = nil
	end

print	"Hamster's name: #{name}""\n"
print 	"Hamster's volume level: #{volume}""\n"
print	"Hamster's color: #{color}""\n"
print	"Hamster's adoptability: #{adoption}""\n"
print	"Hamster's age: #{age}""\n"