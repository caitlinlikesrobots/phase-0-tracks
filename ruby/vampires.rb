puts "What is your name?"
	name = gets.chomp
puts "How old are you?"
	age = gets.to_i
puts "What year were you born?"
	birth_year = gets.to_i
puts "Our company cafeteria serves delicious garlic bread. Should we order some for you?"
	garlic_love = gets.chomp
puts "Would you like to enroll in our company's health insurance?"
	health = gets.chomp
current_year = 2016

if (age <= current_year - birth_year) && garlic_love == "yes" && health == "yes"
	puts "Probably not a vampire."
elsif (age != current_year - birth_year) && garlic_love == "no" && health == "no"
	puts "Probably a vampire. Proceed with caution."
elsif (age != current_year - birth_year) && garlic_love == "no" || health == "no"
	puts "Almost certainly a vampire. Prepare the silver."
elsif name == "Drake Ula" || name == "Tu Fang"
	puts "Definitely a vampire. Get the stake immediately."
else puts "Results inconclusive."
end

print	"Employee name: #{name}""\n"
print 	"Employee age: #{age}""\n"
print	"Employee birth year: #{birth_year}""\n"
print	"Employee garlic preference: #{garlic_love}""\n"
print	"Employee health preference: #{health}""\n"