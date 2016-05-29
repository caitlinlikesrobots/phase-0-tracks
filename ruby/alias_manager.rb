#Spy Name Generator
=begin Generator needs to:
	* Swap first and last name
	* vowels moved forward one character
	* consonants moved forward one character
	* in this instance, y will be a consonant
=end


#Swaps first and last names and turns them into arrays
def alias_generator(agent)

# changes vowels into array and uses .rotate method to account 
# for edge cases
	vowels = "aeiou"
	new_vowels = "aeiou".split('').rotate!

# changes consonants into array and uses .rotate method to account
# for edge cases
	consonants = "bcdfghjklmnpqrstvwxyz"
	new_consonants = "bcdfghjklmnpqrstvwxyz".split('').rotate!

# defines variables for user input and parameter
	real_name = agent

# swaps first and last names and turns them into arrays 
	reversed_real_name = real_name.downcase.split(' ').reverse
   	alias_name_array = reversed_real_name.join(' ').split('')

 # maps the new array through the indices of the vowel and consonant arrays
 	altered_name =  alias_name_array.map do |char| 
        if vowels.include?(char)
            # if there is a vowel, it will map to the next vowel
            new_vowels[new_vowels.index(char).next]
        elsif consonants.include?(char)
            # if there is a consonant, it will map to the next consonant
            new_consonants[new_consonants.index(char).next]
        else
            # accounts for space or another character
            char
        end
    end 

# takes the newly mapped array, joins it back together and capitalizes it
	new_alias = altered_name.join.split.map!{ |name| name.capitalize }.join(" ")
end


#creat hash for agent names
aliases = {}

puts "Hello agent. What names would you like processed?"
	agent_name = gets.chomp
	p aliases[agent_name.to_sym] = alias_generator(agent_name)
		
# ends the loop 
	while agent_name != "quit"
		puts "Enter a new name or enter 'quit'."
		agent_name = gets.chomp
		p aliases[agent_name.to_sym] = alias_generator(agent_name)
	end


# final printing hash (NEED HELP WITH THIS!)
aliases.each { |agent_name, new_alias| puts "puts #{agent_name} is now #{new_alias}."}




		
		
	
		
	 
