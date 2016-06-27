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
db = SQLite3.Database.new("bucket.db")
db.results_as_hash = true

Create table for user information (id, name, age, instagram, location by zipcode, FOREIGN KEY activity_id)
create_users_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS users(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		instagram VARCHAR(255),
		activity VARCHAR(255)
		location INT,
		FOREIGN KEY (activity) REFERENCES activites(id),
		FOREIGN KEY (location) REFERENCES locations(id)
	);
SQL
# Create table for user bucket list information (id, activity, accomplished?)
create_bucketlist_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS bucketlist(
		id INTEGER PRIMARY KEY,
		activity VARCHAR(255),
		accomplished BOOLEAN,
	);
SQL

# Create table for user location 
create_location_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS location(
		id INTEGER PRIMARY KEY,
		location INT,
	);
SQL

# Create tables with commands
db.execute(create_users_cmd)
db.execute(create_location_cmd)
db.execute(create_bucketlist_cmd)
# Create UI for user input 