# Summer Goal
=begin 
* Allow users to CREATE their Summer Goal profile 
* Allow users to READ other users Summer Goal profiles
* Allow users to UPDATE their information
* Allow users to DELETE profile
=end

#require gems
require 'sqlite3'

# Create SQLite3 database 
db = SQLite3::Database.new("summergoal.db")
db.results_as_hash = true

# Create table for user information (id, name, age, instagram, location by zipcode, FOREIGN KEY activity_id)
create_users_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		zipcode INT,
		instagram VARCHAR(255),
		activity_id INT,
		accomplished_id INT,
		FOREIGN KEY (activity_id) REFERENCES summergoal(id),
		FOREIGN KEY (accomplished_id) REFERENCES accomplished(id)
	);
SQL
# Create activities table for user summer goal information (id, activity, accomplished?)
create_summergoal_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS summergoal(
		id INTEGER PRIMARY KEY,
		activity VARCHAR(255),
		comment VARCHAR(255),
		location INT
	);
SQL

# Create table for user instagram accounts 
create_accomplished_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS accomplished(
		id INTEGER PRIMARY KEY,
		accomplished VARCHAR(255)
	);
SQL

# Create tables with commands
db.execute(create_users_cmd)
db.execute(create_accomplished_cmd)
db.execute(create_summergoal_cmd)

# Create methods for CRUD

# create a method to create a user
def create_user(db, name, age, zipcode, activity_id, social_id)
	db.execute("INSERT INTO users (name, age, zipcode, activity_id, accomplished_id) VALUES (?, ?, ?, ?, ?)", [name, age, zipcode, activity_id, accomplished_id])
end

# create a method to add activities
def create_summergoal(db, activity, comment, location)
	db.execute("INSERT INTO summergoal (activity, comment, location) VALUES (?, ?, ?, ?)", [activity, comment, location])
end

# create a method to add social media usernames
def create_accomplished(db, accomplished)
	db.execute("INSERT INTO accomplished (accomplished) VALUES (?)",[accomplished])
end

# create a method to JOIN tables and display user information
def display_user(db)
	db.results_as_hash = true
	display_users_cmd = <<-SQL
		SELECT users.name, 
		users.age, 
		users.zipcode,
		users.instagram, 
		accomplished.accomplished, 
		summergoal.activity, 
		summergoal.comment, 
		summergoal.location 
		FROM users 
		INNER JOIN summergoal 
		ON users.activity_id = summergoal.id 
		INNER JOIN accomplished 
		ON users.accomplished_id = accomplished.id;
	SQL
	display = db.execute(display_users_cmd)
	display.each do |user|
		puts "Name: #{user["name"]} \nAge: #{user["age"]} \nLocation: #{user["zipcode"]} \nSummer Goal: #{user["activity"]} \nActivity Comment: #{user["comment"]} \nInstagram: #{user["instagram"]} \nActivity Location: #{user["location"]} \nAccomplished:#{user["accomplished"]}"
	end
end

# create a method to update user information
	def update_user(db, updated_object, updated_value, updated_user)

		name_cmd = "UPDATE users SET name = ? WHERE name = ?"
		age_cmd = "UPDATE users SET age = ? WHERE age = ?"
		zipcode_cmd = "UPDATE users SET zipcode = ? WHERE zipcode = ?"
		activity_id_cmd = "UPDATE users SET activity_id = ? WHERE activity_id = ?"
		accomplished_id_cmd = "UPDATE users SET accomplished_id = ? WHERE accomplished_id = ?"

		case updated_object
		when 'name'
			cmd = name_cmd
		when 'age'
			cmd = age_cmd
		when 'zipcode'
			cmd = zipcode_cmd
		when 'activity_id'
			cmd = activity_id_cmd
		when 'accomplished_id'
			cmd = accomplished_id_cmd
		end

		db.execute(cmd, [updated_value, updated_user])
	end

# create a method to delete a user
	def delete_user(db, name_to_delete)
		delete_user_cmd = <<-SQL
		DELETE FROM users WHERE name = ?
	SQL
	db.execute(delete_user_cmd, [name_to_delete])
	end

#-------------------------------DRIVER CODE-------------------------------#
# create_user(db, "Caitlin Johnson", 30, 60608, 1, 3)
# create_user(db, "Ryan Johnson", 35, 77006, 2, 1)
# create_user(db, "Grayson Bagwell", 30, 60608, 3, 2)
# create_user(db, "Becky Brand", 56, 77006, 4, 2)
# create_accomplished(db, "I did it! Heck yeah!")
# create_accomplished(db, "I'm getting so close!")
# create_accomplished(db, "I'm planning on starting tomorrow! Promise!")

# create_summergoal(db, "Dollywood", "Dolly Parton is a goddess.", 96701, 0)
# create_summergoal(db, "Scuba Dive", "Fight a shark!", 00123, 0)
# create_summergoal(db, "Dunk a Basketball", "Like Lebron.", 44101, 0)
# create_summergoal(db, "Eat a burger", "why not", 90210, 0)
# delete_user(db, "Becky Brand")
display_user(db)

#-------------------------------UI-------------------------------#
# puts "Let's set our Summer Goal!"
# puts "To add a user: enter 'user'."
# puts "To create a summer goal: enter 'goal'."
# puts "To list social media accounts: enter 'social'."
# puts "To update a user's information: enter 'update'."
# puts "To remove a user: enter 'delete'."
# input = gets.chomp

# activity_id = 0
# 	social_id = 0

# case input

# when 'user'

# 	puts "User's name:"
# 	username = gets.chomp

# 	puts "User's age:"
# 	userage = gets.chomp.to_i

# 	puts "User's zipcode:"
# 	userzip = gets.chomp.to_i

# 




