#Spy Name Generator
=begin Generator needs to:
	* Swap first and last name
	* vowels moved forward one character
	* consonants moved forward one character
	* in this instance, y will be a consonant
=end

# first_name = gets.chomp.downcase
# last_name = gets.chomp.downcase
# name = first_name + last_name
# alias = last_name + first_name

#moves vowels forward one character
def new_vowels
	vowels = "aeiou".split('')
	vowels.class
	new_vowels = vowels.rotate!
	p new_vowels
end

#moves consonants forward one character
def new_consonants
	consonants = "bcdfghjklmnpqrstvwxyz".split('')
	consonants.class
	new_consonants = consonants.rotate!
	p new_consonants
end

#Generate new first names
screen = "clear"


puts "Hello agent. What is your first and last name?"
name = gets.chomp.chars.map(&:downcase)
p name
name.class


# name_arr = []
#  while name != "done"
#  	name_arr << name.to_i
#  	name = gets.chomp
#  end
first_name.class
new_vowels(first_name)
new_consonants(first_name)
p new_first_name






