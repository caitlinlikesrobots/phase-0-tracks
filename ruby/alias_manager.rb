#Spy Name Generator
=begin Generator needs to:
	* Swap first and last name
	* vowels moved forward one character
	* consonants moved forward one character
	* in this instance, y will be a consonant
=end
# create hash for agents
agent_list = {}
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
            new_vowels[new_vowels.index(char)+-1]
        elsif consonants.include?(char)
            # if there is a consonant, it will map to the next consonant
            new_consonants[new_consonants.index(char)+-1]
        else
            # accounts for space or another character
            char
        end
    end 

# takes the newly mapped array, joins it back together and capitalizes it
	new_alias = altered_name.join.split.map!{ |name| name.capitalize }.join(" ")
end

#defines the agent name variabble as a string
agent_name = ""
new_agent_name = alias_generator(agent_name)


# loop that prompts the agent for names
	
puts "Hello agent. What names would you like processed? \n Press '0' when you are done. \n"
agent_name = gets.chomp
puts "#{agent_name} is now #{alias_generator(agent_name)}."
	while agent_name != "0"
		puts "Enter a new name."
		agent_name = gets.chomp
		puts "#{agent_name} is now #{alias_generator(agent_name)}."

# ends the loop (awkwardly)
	if agent_name == "0"
		print "Thank you. Good luck and Godspeed, agent."
		break
	end

# final printing hash (NEED HELP WITH THIS!)
print agent_list.each {  |agent_name, new_agent_name | puts "puts #{agent_name} is now #{alias_generator(agent_name)}."}
end



		
		
	
		
	 
