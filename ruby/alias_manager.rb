#Spy Name Generator
=begin Generator needs to:
	* Swap first and last name
	* vowels moved forward one character
	* consonants moved forward one character
	* in this instance, y will be a consonant
=end

first_name = gets.chomp
last_name = gets.chomp
name = first_name + last_name

#moves vowels forward one character
def new_vowels
	vowels = "aeiou".split('')
	vowels.class
	vowels.rotate!
	vowels
	new_vowels = vowels.join('')
end


#moves consonants forward one character
def new_consonants
	consonants = "bcdfghjklmnpqrstvwxyz".split
	consonants.class
	consonants.rotate!
	consonants
	new_consonants = consonants.join('')
end






# index = 0
# def next_vowel
# 	while index < vowel.length
# 	if vowel[index] == "u"
# 			vowel[index] = "a"
# 		else
# 			vowel[index] = vowel[index].next
# 	end
# 	index += 1
# 	end
# end

p next_vowel("aimee")
