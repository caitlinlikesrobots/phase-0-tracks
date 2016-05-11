# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

<<<<<<< HEAD
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
# swaps capitalization cases for string

"zom".insert(1, "o")
# => “zoom”
# inserts a string into the given index

"enhance".center(14)
"enhance".rjust(11).ljust(15)
=======
puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
# swaps capitalization cases for string

puts "zom".insert(1, "o")
# => “zoom”
# inserts a string into the given index

puts "enhance".center(14)
puts "enhance".rjust(11).ljust(15)
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# => "    enhance    "
#.center adds space around the string to center it as long as the 
# amount of space is larger than the strting
# .rjust/ .ljust adds space around the string based on the justification 
# amount assigned to that string

<<<<<<< HEAD
"Stop! You’re under arrest!".upcase
"Stop! You’re under arrest!".upcase!
=======
puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".upcase!
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# => "STOP! YOU’RE UNDER ARREST!"
# .upcase temporarily capitalizes every letter
# .upcase! permanently campitalizes every letter

<<<<<<< HEAD
"the usual" << " suspects"
"the usual".concat(" susepcts")
=======
puts "the usual" << " suspects"
puts "the usual".concat(" susepcts")
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
#=> "the usual suspects"
# << shovel concatenates the string with the given string
# .concat concatenates the string with the given string

<<<<<<< HEAD
" suspects" .prepend("the usual")
=======
puts " suspects" .prepend("the usual")
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# => "the usual suspects"
# adds the provided string to the original string

<<<<<<< HEAD
"The case of the disappearing last letter".chop
"The case of the disappearing last letter".chomp("r")
=======
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# => "The case of the disappearing last lette"
# .chop chops off the last character in a string
# .chomp chops off the last given character in a string

<<<<<<< HEAD
"The mystery of the missing first letter"[1..-1]
=======
puts "The mystery of the missing first letter"[1..-1]
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# => "he mystery of the missing first letter"
# [1..-1] removes the first character from a string

<<<<<<< HEAD
"Elementary,    my   dear        Watson!".squeeze
=======
puts "Elementary,    my   dear        Watson!".squeeze
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
# .squeeze removes space around characters

<<<<<<< HEAD
"z".ord
=======
puts "z".ord
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# .ord give the ordinal integer of a character (I still am stumped a bit by this)

<<<<<<< HEAD
"How many times does the letter 'a' appear in this string?".count "a"
=======
puts "How many times does the letter 'a' appear in this string?".count "a"
>>>>>>> 8ea94bc9622e1f8ddfb10b316ca9715cdeef6448
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
# .count literally counts the number of times a provided character appears in a string