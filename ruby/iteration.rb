def greeting
	puts "Hello!"
	yield ("Jeff Goldblum")
	puts "Have a great day!"
end 

greeting {|name| puts "So good to see you, #{name}!"}

cities = ["San Francisco", "Clarksdale", "New York", "New Orleans"]
p cities

cities.each do |city|
	puts "#{city} is the best!"
end
p cities

cities.map! do |city|
	city.reverse
end
p cities

famous_dead_people_songs = {"Prince" => "Purple Rain", 
							"David Bowie" => "Starman", 
							"Nirvana" => "Heart-Shaped Box", 
							"Queen" => "Bohemian Rhapsody"}
p famous_dead_people_songs

famous_dead_people_songs.each do |artist, song|
	puts "#{song} is #{artist}'s best work for sure."
end
p famous_dead_people_songs

numbers = [1, 2, 3, 4, 5]
numbers.delete_if{ |number| number > 3}
p numbers

numbers_2 = [1, 2, 3, 4, 5]
numbers_2.keep_if {|number| number>= 3}
p numbers_2

letters = [1, 2, 3, 4, 5]
letters.select! {|letter| letter.odd?}
p letters

numbers_3 = [1, 2, 3, 5, 8, 13, 21]
numbers_3.drop_while {|number| number <= 5}

hash_1 = {
	"Chad" => 17,
	"Shirley" => 40,
	"Clark" => 29,
	"Jessica" => 33
}
hash_1.delete_if {|name, age| age < 21}

hash_2 = {
	"Chad" => 16,
	"Shirley" => 40,
	"Clark" => 29,
	"Jessica" => 33
}
hash_2.keep_if {|name, age| name != "Chad"}

hash_3 = {
	"Chad" => 16,
	"Shirley" => 40,
	"Clark" => 29,
	"Jessica" => 30
}
hash_3.select! {|name, age| name == "Shirley"}

hash_4 = {
	"Chad" => 16,
	"Shirley" => 40,
	"Clark" => 29,
	"Jessica" => 30
}
hash_4.reject! {|name, age| age%10 != 0}