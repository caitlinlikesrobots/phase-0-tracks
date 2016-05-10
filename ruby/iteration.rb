def we_say_stuff
	puts "WAZZUP!!!!!!!!!"
	yield("Floppy Mc'Wobbletons")
end

we_say_stuff { |name| puts "great to see you #{name}"}

zoo = ["walrus", "penguin", "polar bear", "human"]
movie = { "scifi" => "Bladerunner", "horror" => "Army of Darkness", "comedy" => "Duck Soup", "drama" => "Gladiator" }

zoo.each do |animal|
	puts "There is a #{animal} in the zoo."
end

movie.each do |genre, movie|
	puts "#{movie} is a #{genre} movie."
end

p zoo

zoo.map! do |animal|
	animal.prepend("Evil ")
end

p zoo


pain_level = [1, 2, 3, 4, 5]
pain_level.delete_if { |pain| pain.even? }
p pain_level

ascii_char_hash = {"A" => 65, "B" => 68, "C" => 67}
ascii_char_hash.delete_if {|char, dec_num| char.ord != dec_num}
p ascii_char_hash