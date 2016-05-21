# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0

get '/contact' do
  "123 Sesame Street Anytown, Anystate 09876-"
end

get '/great_job/' do
  name = params[:name]
  if name
    "Good Job #{name}!"
  else
    "Good Job!"
  end
end

get '/:numb1/add/:numb2' do
  total = params[:numb1].to_i + params[:numb2].to_i
  total.to_s
end


#return students under a certain age

get '/younger/:age' do
  student = db.execute("SELECT * FROM students WHERE age < ?", params[:age])
  response = ""
  student.each do |student|
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
  end
  response
end

