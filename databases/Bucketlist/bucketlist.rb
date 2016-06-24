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
		zipcode INT,
		activity_id INT,
		social_id INT,
		FOREIGN KEY (activity_id) REFERENCES bucketlist(id),
		FOREIGN KEY (social_id) REFERENCES socialmedia(id)
	);
SQL
# Create activities table for user bucket list information (id, activity, accomplished?)
create_bucketlist_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS bucketlist(
		id INTEGER PRIMARY KEY,
		activity VARCHAR(255),
		comment VARCHAR(255),
		zipcode INT,
		accomplished BOOLEAN
	);
SQL

# Create table for user instagram accounts 
create_socialmedia_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS socialmedia(
		id INTEGER PRIMARY KEY,
		facebook VARCHAR(255),
		instagram VARCHAR(255),
		twitter VARCHAR(255)
	);
SQL

# Create tables with commands
db.execute(create_users_cmd)
db.execute(create_socialmedia_cmd)
db.execute(create_bucketlist_cmd)

# Create methods for CRUD

# create a method to create a user
def create_user(db, name, age, zipcode, activity_id, social_id)
	db.execute("INSERT INTO users (name, age, zipcode, activity_id, social_id) VALUES (?, ?, ?, ?, ?)", [name, age, zipcode, activity_id, social_id])
end

# create a method to add activities
def create_bucketlist(db, activity, comment, zipcode, accomplished)
	db.execute("INSERT INTO bucketlist (activity, comment, zipcode, accomplished) VALUES (?, ?, ?, ?)", [activity, comment, zipcode, accomplished])
end

def create_socialmedia(db, facebook, instagram, twitter)
	db.execute("INSERT INTO socialmedia (facebook, instagram, twitter) VALUES (?, ?, ?)", [facebook, instagram, twitter])
end

def display_user(db)
	db.results_as_hash = true
	display_users_cmd = <<-SQL
		SELECT users.name, 
		users.age, 
		users.zipcode, 
		socialmedia.facebook, 
		socialmedia.instagram, 
		socialmedia.twitter, 
		bucketlist.activity, 
		bucketlist.comment, 
		bucketlist.zipcode, 
		bucketlist.accomplished 
		FROM bucketlist 
		INNER JOIN users 
		ON bucketlist.user_id = users.id 
		INNER JOIN socialmedia ON 
		bucektlist.social_id = socialmedia.id;
	SQL
	# display = db.execute(display_users_cmd)
	# display.each do |user|
	# 	puts "Name: #{user["name"]} | Age: #{user["age"]} | Location: #{user["zipcode"]} | 
	# Bucket List: #{user["bucketlist"]} | Location:#{user["location"]}"
	# end
end

# #-------------------------------DRIVER CODE-------------------------------#
create_user(db, "Grayson Bagwell", 30, 60608, 2, 3)
create_bucketlist(db, "Dunk a Basketball", "Like Tim Duncan.", 77076, 0)
create_socialmedia(db, "grayson_ghb", "free_ghb", "graysoncomplains")
display_user(db)





