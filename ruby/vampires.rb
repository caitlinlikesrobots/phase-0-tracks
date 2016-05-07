#HR Department: Vampire Detector Questionnaire
		system "clear"

# Number of employees processed loop
		puts "How many employees are we processing today?"
			employee_number=gets.to_i
		employee_number.times do 
		puts "What is your name?"
			name=gets.chomp
		puts "How old are you?"
			age=gets.chomp.to_i
		puts "What year were you born?"
			birth_year=gets.chomp.to_i
		puts "Our company cafeteria serves delicious garlic bread. Should we order some for you? (yes/no)"
			garlic_love=gets.chomp.downcase
		puts "Would you like to enroll in our company's health insurance? (yes/no)"
			health=gets.chomp.downcase
#Check for allergies loop [make this a method?]
		puts "Do you have any allergies? If so write 'yes'. No allergies? Lucky! Write 'done' now."
			allergies=gets.chomp.downcase
		if allergies.chomp.downcase=="yes"
			puts "Please enter your allergies one at a time. Press enter after each allergy."
		end

			allergy=nil
		until allergy == "done"
			puts "Name that allergy!"
			allergy=gets.chomp.downcase
		if 	allergy=="sunshine"
			puts "Probably a Vampire. Be careful!"
			break
		end
		end
# Make this a method?
#Check for correct age
		current_year=Time.new.year
		if  age == current_year - birth_year
			correct_age = true
		else correct_age != age
			correct_age = false
		end
			

#Check for garlic preference
		if garlic_love == "yes"
			garlic_love = true
		else garlic_love != "yes"
			garlic_love = false
		end

#Check for health insurance preference
		if health == "yes"
		     health = true
		else health != "yes"
			health = false
		end

#Vampire Detection Logic
		if name == ("Drake Ula" || "Tu Fang")
		   puts "Definitely a vampire. Get the stake immediately."
		
		elsif correct_age && (garlic_love || health)
		   puts "Probably not a vampire."
		
		elsif !correct_age && (!garlic_love || !health)
		   puts "Probably a vampire. Proceed with caution."
		
		elsif !correct_age  && !garlic_love && !health
		   puts "Almost certainly a vampire. Prepare the silver."
		
		else puts "Results inconclusive."
		end

#Prints employee information
		print	"Employee name: #{name}""\n"
		print 	"Employee age: #{correct_age}""\n"
		print	"Employee garlic preference: #{garlic_love}""\n"
		print	"Employee health preference: #{health}""\n"
	end

		puts "Actually, this is all completely ridiculous. Vampires? That's bonkers. Let's go grab a drink. \n OF BLOOD!"
