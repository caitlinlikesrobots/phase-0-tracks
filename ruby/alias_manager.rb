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
   	alias_name_array = reversed_real_name.join(" ").split("")

 # maps the new array through the indices of the vowel and consonant arrays
 	altered_name =  alias_name_array.map do |letter| 
        if vowels.include?(letter)
            # if there is a vowel, it will map to the next vowel
            new_vowels[new_vowels.index(letter)+1]
        elsif consonants.include?(letter)
            # if there is a consonant, it will map to the next consonant
            new_consonants[new_consonants.index(letter)+1]
        else
            # accounts for space or another character
            letter
        end
    end 

# takes the newly mapped array, joins it back together and capitalizes it
	new_alias = altered_name.join.split.map { |name| name.capitalize }.join(" ")
end


agent_name = " "
	
puts "Hello agent. What is your first and last name?"
	agent_name = gets.chomp

print "Your alias is now #{alias_generator(agent_name)}."
	 

