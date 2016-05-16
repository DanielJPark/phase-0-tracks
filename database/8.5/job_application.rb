require 'sqlite3'
require 'faker'

#create SQLite3 database

@db = SQLite3::Database.new("job_applications.db")
@db.results_as_hash = true


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
		positions_available VARCHAR(255),
		hourly_wage INT
	)
SQL

@db.execute(create_applicants_table)
@db.execute(create_positions_table)

def user_interface
	puts "Welcome to our company."
	puts "Are you a manager or an applicant?"
	puts "Type 1 for Mananger or 2 for Applicant."
	puts "Type 3 to Quit"
	who_are_you = gets.chomp
	
	if who_are_you == "2"
		
		puts "Would you like to apply for a position with us?"
		apply = gets.chomp
			if apply == "yes"
				puts "These are the positions we are currently looking to fill."
				puts list_of_positions
				add_applicant
			else
				puts "Thank you have a nice day!"
			end

	elsif who_are_you == "1"
		puts "What would you like to do?"
		puts "1. Enter positions available for hire"
		puts "2. See a list of all applicants"
		puts "3. See a list of all positions currently needed."
		want_to_do = gets.chomp.to_i
			if want_to_do == 1
				add_positions	
			elsif want_to_do == 2
				list_of_applicants
			elsif want_to_do == 3
				list_of_positions
			end
	end

end





def add_applicant
	puts "Please enter your full name:"
	name = gets.chomp
	puts "Please enter your age:"
	age = gets.chomp
	puts "Please enter the position you are interested in:"
	position = gets.chomp


	@db.execute("INSERT INTO applicants (applicant_name, applicant_age, position_desired) VALUES (?, ?, ?)" , [name, age, position])
	user_interface
end

def add_positions
	puts "Please enter the position title you would liek to add to the Now Hiring list."
	position = gets.chomp
	puts "Please enter the hourly wage rate for this position."
	wage = gets.chomp

	@db.execute("INSERT INTO positions (positions_available) VALUES (?, ?)", [position, wage])
	user_interface
end

def list_of_applicants
	applicants = @db.execute("SELECT * FROM applicants;")
	puts "--- List of Applicants ---"
	for i in 0...(applicants.length) do
		puts "Name: #{applicants[i]["applicant_name"]} Age: #{applicants[i]["applicant_age"]} Position Desired: #{applicants[i]["position_desired"]}"
	end
end

def list_of_positions
	posted_positions = @db.execute("SELECT positions_available FROM positions;")
	puts "--- Posted Positions---"
	for i in 0...(posted_positions.length) do
		puts "Position: #{posted_positions[i]["position"]} Wage: #{posted_positions[i]["hourly_wage"]}"
	end
end

user_interface