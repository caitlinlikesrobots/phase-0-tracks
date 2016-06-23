# BucketList
=begin 
* Allow users to CREATE their BucketList profile 
* Allow users to READ other users BucketList profiles
* Allow users to UPDATE their information
* Allow users to DELETE profile
=end

#require gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database 
db = SQLite3::Database.new("bucket.db")
db.results_as_hash = true

# Create table for user information (id, name, age, instagram, location by zipcode, FOREIGN KEY activity_id)
create_users_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		instagram VARCHAR(255)
	);
SQL
# Create activities table for user bucket list information (id, activity, accomplished?)
create_activities_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS activities(
		id INTEGER PRIMARY KEY,
		activity VARCHAR(255),
		comment VARCHAR(255),
		accomplished BOOLEAN,
		user_id INT,
		location_id INT,
		FOREIGN KEY (user_id) REFERENCES users(id),
		FOREIGN KEY (location_id) REFERENCES locations(id)
	);
SQL

# Create table for user locations 
create_location_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS locations(
		id INTEGER PRIMARY KEY,
		location INT
	);
SQL

# Create tables with commands
db.execute(create_users_cmd)
db.execute(create_location_cmd)
db.execute(create_activities_cmd)

# Create methods for CRUD

method to create a user
def create_user(db, name, age, instagram)
	db.execute("INSERT INTO users (name, age, instagram,) VALUES (?, ?, ?, ?)", [name, age, instagram, activity, location])
end

def bucketlist(db)

def display_user(db)
	db.results_as_hash = true
	display_users_cmd = <<-SQL
		SELECT users.name, users.age, users.instagram, activities.activity_id, locations.location_id
		FROM users 
		JOIN user_id ON activities.user_id = users.id 
		JOIN locations_id ON activities.location_id = locations.id
	SQL
	display = db.execute(display_users_cmd)
	display.each do |user|
		puts "Name: #{user["name"]} | Age: #{user["age"]} | Instagram Username: #{user["instagram"]} | Bucket List: #{user["activities"]} | Location:#{user["location"]}"
	end
end

# #-------------------------------DRIVER CODE-------------------------------#
create_user("Caitlin Johnson", 30, "caitlinlikesyou")




