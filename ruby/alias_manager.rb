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
end

# puts new_vowels

#moves consonants forward one character
def new_consonants
	consonants = "bcdfghjklmnpqrstvwxyz".split('')
	consonants.class
	new_consonants = consonants.rotate!
end

# puts new_consonants

#Generate new names
screen = "clear"


puts "Hello agent. What is your first and last name?"
name = gets.chomp.downcase.split(" ")

#swaps first and last names
name.shuffle!


# def alias_generator(name)
# i = 0
# new_vowels
# new_consonants
# while i < name.length
# 	if name[i] == " "

# 	end

# 	i += 1
# end
# 	return name
# end

# puts "Hello agent. What is your first and last name?"
# name = gets.chomp.downcase.split(" ")

# #swaps first and last names
# name.rotate!
# name.class
# new_vowels(name)
# new_consonants(name)
# swap_name = name.join(" ")

# alias_generator(name)







# name = gets.chomp.chars.map(&:downcase)
# p name
# name.class


# name_arr = []
#  while name != "done"
#  	name_arr << name.to_i
#  	name = gets.chomp
#  end







