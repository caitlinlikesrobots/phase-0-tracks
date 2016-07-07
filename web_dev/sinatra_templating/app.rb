# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
get '/students/mascot' do
    erb :mascot
end

get '/students/mascot/mascot_ideas' do
  @mascots = db.execute("SELECT * FROM mascots")
  erb :mascot_ideas
end

post '/students/mascot' do 
  db.execute("CREATE TABLE IF NOT EXISTS mascots (mascot_ideas VARCHAR(255))")
  db.execute("INSERT INTO mascots (mascot_ideas) VALUES (?)", [params['mascot_ideas']])
  redirect '/students/mascot/mascot_ideas'
end


  