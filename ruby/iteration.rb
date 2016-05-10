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

#1
pain_level = [1, 2, 3, 4, 5]
pain_level.delete_if { |pain| pain.even? }
p pain_level

ascii_char_hash = {"A" => 65, "B" => 68, "C" => 67}
ascii_char_hash.delete_if {|char, dec_num| char.ord != dec_num}
p ascii_char_hash

#2
emotions_array = ["happy", "sad", "hangry", "nervous"]
emotions_array.keep_if {|emotion| emotion.length > 5 }
p emotions_array


music_hash = {"The Prodigy" => 10, "Lead Belly" => 9, "Gogol Bordello" => 9, "Prince" => 11}
puts "Artists rated from 1-10 (10 being greatest)."
music_hash.keep_if { |band, greatness| greatness >= 10 }
p music_hash

#3
[1, 2, 3, 4, 5].product([6, 7, 8]){|p| p p}

planet_distance = {"Mars" => 100, "Jupiter" => 420, "Saturn" => 825}
puts "Distance is in bazillion miles."
planet_distance.select! { |planet, distance| distance < 400 }
p planet_distance





