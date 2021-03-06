# Summer Goal
=begin 
* Allow users to CREATE their Summer Goal profile 
* Allow users to READ other users Summer Goal profiles
* Allow users to UPDATE their information
* Allow users to DELETE profile
=end

# require gems
require 'sqlite3'

# Create SQLite3 database 
db = SQLite3::Database.new("summergoal.db")
db.results_as_hash = true

# Create table for user information (id, name, age, zipcode, instagram, activity, comment, accitvity_location, ids)
create_users_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		zipcode INT,
		instagram VARCHAR(255),
		activity VARCHAR(255),
		comment VARCHAR(255),
		activity_location INT,
		motivation_id INT,
		accomplished_id INT,
		FOREIGN KEY (motivation_id) REFERENCES motivation(id),
		FOREIGN KEY (accomplished_id) REFERENCES accomplished(id)
	);
SQL
# Create activities table for user summer goal information (id, motivation)
create_motivation_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS motivation(
		id INTEGER PRIMARY KEY,
		motivation VARCHAR(255)
	);
SQL

# Create table for user accomplishment
create_accomplished_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS accomplished(
		id INTEGER PRIMARY KEY,
		accomplished VARCHAR(255)
	);
SQL

# Create tables with commands
db.execute(create_users_cmd)
db.execute(create_accomplished_cmd)
db.execute(create_motivation_cmd)

# Create methods for CRUD

# create a method to create a user
def create_user(db, name, age, zipcode, instagram, activity, comment, activity_location, motivation_id, accomplished_id)
	db.execute("INSERT INTO users (name, age, zipcode, instagram, activity, comment, activity_location, motivation_id, accomplished_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", [name, age, zipcode, instagram, activity, comment, activity_location, motivation_id, accomplished_id])
end

# add motivations to motivation table

	motivations = ["Comparing myself to others on social media.", "For my family.", "For my health and mental well-being", "For an essential sense of self and happiness.", "Why not?"]
	motivations.each do |motive|
	db.execute("INSERT INTO motivation (motivation) VALUES (?)", [motive])
	end


# add accomplishments to accomplished table
	accomplishments = ["I did it! Heck yeah!", "I'm getting so close!", "I'm planning on starting tomorrow! Promise!"]
	accomplishments.each do |accomplishment|
	db.execute("INSERT INTO accomplished (accomplished) VALUES (?)",[accomplishment])
	end

# create a method to JOIN tables and display user information
def display_user(db)
	db.results_as_hash = true
	display_users_cmd = <<-SQL
		SELECT users.name, 
		users.age, 
		users.zipcode,
		users.instagram,  
		users.activity, 
		users.comment, 
		users.activity_location,
		accomplished.accomplished,
		motivation.motivation 
		FROM users 
		INNER JOIN motivation 
		ON users.motivation_id = motivation.id 
		INNER JOIN accomplished 
		ON users.accomplished_id = accomplished.id
	SQL
	display = db.execute(display_users_cmd)
	display.each do |user|
		puts "--------------\nName: #{user["name"]} \nAge: #{user["age"]} \nLocation: #{user["zipcode"]} \nSummer Goal: #{user["activity"]} \nActivity Comment: #{user["comment"]} \nInstagram: #{user["instagram"]} \nActivity Location: #{user["activity_location"]} \nAccomplished:#{user["accomplished"]} \nMotivation: #{user["motivation"]}\n--------------"
	end
end

# create a method to update user information
	def update_user(db, updated_object, updated_value, updated_user)

		name_cmd = "UPDATE users SET name = ? WHERE name = ?"
		age_cmd = "UPDATE users SET age = ? WHERE age = ?"
		zipcode_cmd = "UPDATE users SET zipcode = ? WHERE zipcode = ?"
		instagram_cmd = "UPDATE users SET instagram = ? WHERE instagram = ?"
		activity_cmd = "UPDATE users SET activity = ? WHERE activity = ?"
		comment_cmd = "UPDATE users SET comment = ? WHERE comment = ?"
		activity_location_cmd = "UPDATE users SET activity_location = ? WHERE activity_location = ?"
		motivation_id_cmd = "UPDATE users SET motivation_id = ? WHERE motivation_id = ?"
		accomplished_id_cmd = "UPDATE users SET accomplished_id = ? WHERE accomplished_id = ?"

		case updated_object
		when 'name'
			cmd = name_cmd
		when 'age'
			cmd = age_cmd
		when 'zipcode'
			cmd = zipcode_cmd
		when 'instagram'
			cmd = instagram_cmd
		when 'activity'
			cmd = activity_cmd
		when 'comment'
			cmd = comment_cmd
		when 'activity_location'
			cmd = activity_location_cmd
		when 'motivation_id'
			cmd = motivation_id_cmd
		when 'accomplished_id'
			cmd = accomplished_id_cmd
		end

		db.execute(cmd, updated_object, updated_value, updated_user)
	end

# create a method to delete a user
	def delete_user(db, name_to_delete)
		delete_user_cmd = <<-SQL
		DELETE FROM users WHERE name = ?
	SQL
	db.execute(delete_user_cmd, [name_to_delete])
	end


#create a method that uses zipcodes to show how literally far away a person is from their goal

#-------------------------------DRIVER CODE-------------------------------#
# create_user(db, "Caitlin Johnson", 30, 60608, "caitlinlikesyou", "Dollywood", "Dolly Parton is a goddess.", 37863, 3, 3)
# create_user(db, "Ryan Johnson", 35, 77006, "rynomite", "Dunk a basketball", "like Lebron", 70123, 2, 1)
# create_user(db, "Grayson Bagwell", 30, 60608, "free_ghb", "Scuba dive", "Look at sharks!", 96701, 4, 2)
# create_user(db, "Becky Brand", 56, 77006, "beckswithgoodhair", "eat a burger", "why not", 38936, 1, 2)
# create_accomplished(db, "I did it! Heck yeah!")
# create_accomplished(db, "I'm getting so close!")
# create_accomplished(db, "I'm planning on starting tomorrow! Promise!")
# create_motivation(db, "Comparing myself to others on social media.")
# create_motivation(db, "For my family.")
# create_motivation(db, "For my health and mental well-being")
# create_motivation(db, "For an essential sense of self and happiness.")
# create_motivation(db, "Why not?")
# delete_user(db, "Becky Brand")
# display_user(db)

#-------------------------------UI-------------------------------#
loop do
puts "Let's set our Summer Goal!"
puts "To add a user: enter 'user'."
puts "To update a user's information: enter 'update'."
puts "To see all users: enter 'display'."
puts "To remove a user: enter 'delete'."
puts "To exit: enter 'exit'."
input = gets.chomp

	if input == "exit"
		puts "Exiting... Thank you."
		break

	end



case input
when 'user'

	puts "User's name:"
	user_name = gets.chomp

	puts "User's age:"
	user_age = gets.chomp.to_i

	puts "User's zipcode:"
	user_zip = gets.chomp.to_i

	puts "User's Instagram username:"
	user_instagram = gets.chomp

	puts "What is your summer goal?"
	user_goal = gets.chomp

	puts "What comment do you have for your goal?"
	user_comment = gets.chomp

	puts "Where is your summer goal located? (zipcode)."
	goal_zip = gets.chomp.to_i

	puts "What is motivating you to complete this goal? \nChoose from: 'social media', 'family', 'health', 'happiness'."
	user_motivation = gets.chomp
		if user_motivation == 'social media'
			motivation_id = 1
		elsif user_motivation == 'family'
			motivation_id = 2
		elsif user_motivation == 'health'
			motivation_id = 3
		elsif user_motivation == 'happiness'
			motivation_id = 4
		else motivation_id = 5
		end 

	puts "On a scale of 1 to 3, with 1 being completely accomplished,\nhow far are you from reaching your goal?"
	goal_reach = gets.chomp.to_i

	create_user(db, user_name, user_age, user_zip, user_instagram, user_goal, user_comment, goal_zip, motivation_id, goal_reach)
	display_user(db)

when 'update'
	display_user(db)

	puts "What user would you like to update?"
	updated_user = gets.chomp

	puts "What would you like updated? \n[name, age, zipcode, instagram, activity, comment, activity_location, motivation, accomplished]."
	updated_object = gets.chomp

	case updated_object 
	
	when "name"
		puts "What is your new name?"
		updated_value = gets.chomp
	
	when "age"
		puts "What is your new age?"
		updated_value = gets.chomp.to_i
	
	when "zipcode"
		puts "What is your new zipcode?"
		updated_value = gets.chomp.to_i
	
	when "instagram"
		puts "What is your new Instagram username?"
		updated_value = gets.chomp
	
	when "activity"
		puts "What is your new summer goal?"
		updated_value = gets.chomp
	
	when "commet"
		puts "What is your new comment?"
		updated_value = gets.chomp
	
	when "activity_location"
		puts "Where is your new activity? (zipcode)"
		updated_value = gets.chomp.to_i
	
	when 'motivation'
		puts "What is motivating you now?['social media', 'family', 'health', 'happiness']"
		updated_value = gets.chomp
		case updated_value
		when "social media"
			motivation_id = 1
		when "family"
			motivation_id = 2
		when "health"
			motivation_id = 3
		when "happiness" 
			motivation_id = 4
		end 
		display_user(db)
	
	when 'accomplished'
		puts "On a scale of 1 to 3, with 1 being completely accomplished,\nNOW how far are you from reaching your goal?"
		updated_value = gets.chomp.to_i

	update_user(db, updated_object, updated_value, updated_user)
	display_user(db)
	end

when 'display'
	display_user(db)

when 'delete'
	display_user(db)
	puts "What user would you like to remove?"
	removed_user = gets.chomp
	delete_user(db, removed_user)
	display_user(db)
end
end