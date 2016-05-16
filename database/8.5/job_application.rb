require 'sqlite3'
require 'faker'

#create SQLite3 database

db = SQLite3::Database.new("job_applications.db")
db.results_as_hash = true


create_applicants_table = <<-SQL
	CREATE TABLE IF NOT EXISTS applicants (
		id INTEGER PRIMARY KEY,
		applicant_name VARCHAR(255),
		applicant_age INT,
		position_desired VARCHAR(255)
	)
SQL

create_positions_table = <<-SQL
	CREATE TABLE IF NOT EXISTS positions (
		id INTEGER PRIMARY KEY,
		positions_available VARCHAR(255)
	)
SQL

db.execute(create_applicants_table)
db.execute(create_positions_table)

def user_interface
end

def add_applicant
	puts "Please enter your full name:"
	applicant_name = gets.chomp
	puts "Please enter your age:"
	applicant_age = gets.chomp
	puts "Please enter the position you are interested in:"
	position_desired = gets.chomp


	db.execute("INSERT INTO applicants (applicant_name, applicant_age, position_desired) VALUES (?, ?, ?)" , [applicant_name, applicant_age, position_desired])
	user_interface
end