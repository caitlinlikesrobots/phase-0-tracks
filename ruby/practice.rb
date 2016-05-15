vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

def new_vowels
	vowels = "aeiou".split('')
	vowels.class
	new_vowels = vowels.rotate!
end

#moves consonants forward one character
def new_consonants
	consonants = "bcdfghjklmnpqrstvwxyz".split('')
	consonants.class
	new_consonants = consonants.rotate!
end

#combines the new_vowels and new_consonants methods for use

def alter_letters(name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	name.map! { |letter| vowels.include?(letter) ? letter = new_vowels(letter) : 
				letter = new_consonants(letter)
			  }
	 
end

puts "Write a name"
name = gets.chomp.downcase.split('')
alter_letters(name)