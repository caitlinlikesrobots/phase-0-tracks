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

puts "Stop! You’re under arrest!".upcase
puts "Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual" << " suspects"
puts "the usual".concat(" susepcts")
#=> "the usual suspects"

puts " suspects" .prepend("the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

puts "z".ord
# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count "a"
# "How many times does the letter 'a' appear in this string?".<???>
# => 4