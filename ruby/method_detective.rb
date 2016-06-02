# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
# swaps capitalization cases for string

puts "zom".insert(1, "o")
# => “zoom”
# inserts a string into the given index

puts "enhance".center(14)
puts "enhance".rjust(11).ljust(15)
# => "    enhance    "
#.center adds space around the string to center it as long as the 
# amount of space is larger than the strting
# .rjust/ .ljust adds space around the string based on the justification 
# amount assigned to that string

puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"
# .upcase temporarily capitalizes every letter
# .upcase! permanently campitalizes every letter

puts "the usual" << " suspects"
puts "the usual".concat(" susepcts")
#=> "the usual suspects"
# << shovel concatenates the string with the given string as argument
# .concat concatenates the string with the given string as argument

puts " suspects" .prepend("the usual")
# => "the usual suspects"
# adds the provided string to the original string

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"
# .chop chops off the last character in a string
# .chomp chops off the last given character in a string

puts "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"
# [1..-1] removes the first character from a string

puts "Elementary,    my   dear        Watson!".squeeze
# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
# .squeeze removes space around characters

puts "z".ord
# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# .ord give the ordinal integer of a character (I still am stumped a bit by this)

puts "How many times does the letter 'a' appear in this string?".count "a"
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
# .count literally counts the number of times a provided character appears in a string