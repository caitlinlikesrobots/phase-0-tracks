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
puts "What changes you would like to make? Type [none] if you are satisfied."
client_change = gets.chomp.to_sym
if client_change!=:none
	puts "What do you want to change?"
	if client_decor.key?(client_change)
		client_decor[client_change]=gets.chomp
	end
end

#prints updated hash
p client_decor

