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

		current_year = 2016
#Check for correct age
		correct_age = current_year - birth_year
		if correct_age == age 
			correct_age = true
		else 
			correct_age = false
		end 

#Check for garlic preference
		if garlic_love == "yes"
			garlic_love = true
		else garlic_love == "no"
			garlic_love = false
		end

#Check for health insurance preference
		if health == "yes"
			health = true
		else health == "no"
			health = false
		end

#Vampire Detection Logic
		if name == "Drake Ula" || "Tu Fang"
			puts "Definitely a vampire. Get the stake immediately."
		elsif  correct_age = true && garlic_love = true && health = true
			puts "Probably not a vampire."
		elsif correct_age = false && ( garlic_love = false || health = false)
			 puts "Probably a vampire. Proceed with caution."
		elsif correct_age = false && garlic_love = false && health = false
			puts "Almost certainly a vampire. Prepare the silver."
		else puts "Results inconclusive."
		end

#Check for allergies loop
			puts "Do you have any allergies? (yes or no)"
			allergies = gets.chomp.downcase
		if allergies == "yes"
			puts "Please enter your allergies one at a time. Press enter after each allergy. Write 'done' when finsihed"
		else puts "No allergies? Lucky! Write 'done' now."
		end

			allergy = nil
		while allergy != "done"
			puts "Name your allergy."
			allergy = gets.chomp.downcase
		if 	allergy == "sunshine"
			puts "Probably a Vampire. Be careful!"
			break
		end
		end
		
#Prints employee information
		print	"Employee name: #{name}""\n"
		print 	"Employee age: #{age}""\n"
		print	"Employee birth year: #{birth_year}""\n"
		print	"Employee garlic preference: #{garlic_love}""\n"
		print	"Employee health preference: #{health}""\n"
		end



		puts "Actually, this is all completely ridiculous. Vampires? That's bonkers. Let's go grab a drink. \n OF BLOOD!"
