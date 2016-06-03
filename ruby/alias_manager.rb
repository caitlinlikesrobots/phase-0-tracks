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
	new_vowels = "aeiou".split('').reverse

# changes consonants into array and uses .rotate method to account
# for edge cases
	consonants = "bcdfghjklmnpqrstvwxyz"
	new_consonants = "bcdfghjklmnpqrstvwxyz".split('').reverse

# defines variables for user input and parameter
	real_name = agent

# swaps first and last names and turns them into arrays 
	reversed_real_name = real_name.downcase.split(' ').reverse
   	alias_name_array = reversed_real_name.join(' ').split('')

 # maps the new array through the indices of the vowel and consonant arrays
 	altered_name =  alias_name_array.map do |char| 
        if vowels.include?(char)
            # if there is a vowel, it will map to the next vowel
            new_vowels[new_vowels.index(char)-1]
        elsif consonants.include?(char)
            # if there is a consonant, it will map to the next consonant
            new_consonants[new_consonants.index(char)-1]
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
agent_name = ''
while agent_name != 'quit'
puts "Hello agent. What names would you like processed? Enter 'quit' to finish"
	agent_name = gets.chomp
		# ends the loop 
	p aliases[agent_name.to_sym] = alias_generator(agent_name)
	puts "Enter a new name or enter 'quit'."
	if agent_name != 'quit'
		agent_name = gets.chomp
		p aliases[agent_name.to_sym] = alias_generator(agent_name)
	else 
		p "Thank you!"
	end



# final printing hash (NEED HELP WITH THIS!)
aliases.each { |agent_name, new_alias| puts "puts #{agent_name} is now #{new_alias}."}




		
		
	
		
	 
