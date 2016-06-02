# Interior Designer Information Form

=begin Form Elements:
	* Asks client series of questions
	* Prints hash to screen when finished
	* Opportunity to update a key value unless none
	* Print updated version of hash
=end

client_decor = {}
system "clear"

# Client Information
puts "Client Name:" 
	client_decor[:name] = gets.chomp
puts "Client House Type:"
	client_decor[:house_type] = gets.chomp
puts "Client Age:"
	client_decor[:age] = gets.to_i
puts "Number of Children:"
	client_decor[:children_number] = gets.to_i
puts "Preferred Theme:"
	client_decor[:theme] = gets.chomp
puts "Color Palette:"
	client_decor[:color_palette] = gets.chomp
puts "Is there a friendly ghost? [true/false]"
	client_decor[:ghost] = gets.chomp
puts "Do you want to keep that roof? [true/false]"
	client_decor[:roof] = gets.chomp

#prints original hash
p client_decor

#prompts for possible changes
puts "What would you like to change? Type [none] if you are satisfied."
change = gets.chomp

if change == "none"

else
	puts "What is the updated information for #{change.to_sym}?"
	client_update = gets.chomp
	new_key = change.to_sym

	#adjust for appropriate data type
	client_decor[new_key].class == Fixnum ? client_decor[new_key] = client_update.to_i : client_decor[new_key] = client_update
end

#prints updated hash
p client_decor

