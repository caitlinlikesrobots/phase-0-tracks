#Spy Name Generator
=begin Generator needs to:
	* Swap first and last name
	* vowels moved forward one character
	* consonants moved forward one character
	* in this instance, y will be a consonant
=end

# first_name = gets.chomp.downcase and made into array
# last_name = gets.chomp.downcase and made into array


#vowels needs to be a global variable here due to the frequency 
#of its use
$vowels = "aeiou"
consonants = "bcdfghjklmnpqrstvwxyz"

#moves vowels forward one character
def new_vowels(array)
	$vowels = []
	$vowels << "a"
	$vowels << "e"
	$vowels << "i"
	$vowels << "o"
	$vowels << "u"
	$vowels
	new_vowels = $vowels
	new_vowels.rotate!
	
end


#moves consonants forward one character
def new_consonants(array)
	consonants = "bcdfghjklmnpqrstvwxyz".split('')
	consonants.class
	new_consonants = consonants.rotate!
end

#combines the new_vowels and new_consonants methods for use

def alter_letters(array)
	array.map! { |letter|
		$vowels.include?(letter) ? letter = new_vowels(letter) : letter = new_consonants(letter)
	}
	
	new_alias_first = array[1].join('')
	new_alias_last = array[0].join('')
	new_alias = new_alias_first + new_alias_last
	return new_alias
	
end

#Generate new names

def alias_generator
	puts "Hello agent. What is your first and last name?"
# first_name = gets.chomp.downcase and made into array
# last_name = gets.chomp.downcase and made into array
	name = gets.chomp.downcase.split(" ")
#swaps first and last names
	name.reverse!
#separates last and first names and split into arrays
	first_name = name[0].split('')
	last_name = name[1].split('')
#provides new alias with alter_letters method
	new_alias = "#{alter_letters(first_name)} #{alter_letters(last_name)}"
	yield(new_alias)
end
alias_generator {|new_alias| puts "Your new alias is #{new_alias}."}








