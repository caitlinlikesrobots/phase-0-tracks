# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
# get '/about/:person' do
#   person = params[:person]
#   "#{person} is a programmer, and #{person} is learning Sinatra."
# end

# get '/:person_1/loves/:person_2' do
#   "#{params[:person_1]} loves #{params[:person_2]}"
# end

# write a GET route that retrieves
# all student data
# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   response = ""
#   students.each do |student|
#     response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end

# write a GET route that retrieves
# a particular student

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end

# write a GET route that displays contact information
get '/address/:contact' do
  place = params[:contact]
  place = ""
  place << "Dollywood is located at:<br>"
  place << "#{params[:contact]}."
end

# write a GET route that takes a name as a param and returns a good job message if name is present
get '/' do
  name = params[:name]
  if name
  "Good job, #{params[:name]}!"
  else
  "Good job!"
  end
end

# write a GET route that adds two numbers
get '/:number_1/+/:number_2' do
  number_1 = "#{params[:number_1]}"
  number_2 = "#{params[:number_2]}"
  addition = number_1.to_i + number_2.to_i
  addition.to_s

end

# write a GET route that searches the database
get '/students/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
  student.to_s
  response = ""
  student.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# Other web app libraries for Ruby are Rails, Lotus, Cuba and Padrino. 
# 
# Other database softwares are Heroku, SQL, MySQL
#
# A Web stack is the collection of software required for Web development. At a minimum, 
# a Web stack contains an operating system (OS), a programming language, database software 
# and a Web server.
#
