#HR Department: Vampire Detector Questionnaire
system "clear"

# Number of employees processed loop
puts "How many employees are we processing today?"
	employees = gets.to_i
employees.times do 
puts "What is your name?"
	name = gets.chomp
puts "How old are you?"
	age = gets.to_i
puts "What year were you born?"
	birth_year = gets.to_i
puts "Our company cafeteria serves delicious garlic bread. Should we order some for you? (yes/no)"
	garlic_love = gets.chomp.downcase
puts "Would you like to enroll in our company's health insurance? (yes/no)"
	health = gets.chomp.downcase

#Check for allergies loop
puts "Please list any allergies one at a time. Press enter after each allergy. Write 'done' when finsihed"
	allergy = nil
	allergy = gets.chomp.downcase
while allergy == "done"
	break
if allergy == "sunshine"
	vampire_detect = "Probably a vampire. Careful."
	break
end
end
current_year = 2016

#Check for correct age
if age == current_year - birth_year
	correct_age = true
else 
	correct_age = false
end 

#Check for garlic preference
if garlic_love == "yes"
	garlic_love = true
else 
	garlic_love = false
end

#Check for health insurance preference
if health == "yes"
	health = true
else
	health = false
end

#Check suspicious names
if name == "Drake Ula"
	vampire_detect = "Definitely a vampire. Get the stake immediately."
elsif name == "Tu Fang"
	vampire_detect = "Definitely a vampire. Get the stake immediately."
else vampire_detect = false
end

#Vampire Detection Conditions
if  correct_age && garlic_love == "yes" && health == "yes"
	vampire_detect = "Probably not a vampire."
elsif correct_age || (garlic_love == "no" && health == "no")
	puts "Probably a vampire. Proceed with caution."
elsif (correct_age && garlic_love == "no") || health == "no"
	puts "Almost certainly a vampire. Prepare the silver."
elsif (name == "Drake Ula" || name == "Tu Fang")
	puts "Definitely a vampire. Get the stake immediately."
else puts "Results inconclusive."
end

print	"Employee name: #{name}""\n"
print 	"Employee age: #{age}""\n"
print	"Employee birth year: #{birth_year}""\n"
print	"Employee garlic preference: #{garlic_love}""\n"
print	"Employee health preference: #{health}""\n"
end

puts "Actually, this is all completely ridiculous. Vampires? That's bonkers. Let's go grab a drink. \n OF BLOOD!"
