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
	closing = "Thank you have a nice day!"
	puts "Welcome to our company."
	puts "Are you a manager or an applicant?"
	puts "Type 1 for Mananger" 
	puts "Type 2 for Applicant"
	puts "Type 3 to Quit"
	who_are_you = gets.chomp

	if who_are_you == "1"
		loop do
		puts ""
		puts "What would you like to do?"
		puts ""
			puts "Type 1 to Enter positions available for hire"
			puts "Type 2 to See a list of all applicants"
			puts "Type 3 to See a list of all positions currently needed"
			puts "Type 4 to Quit"
			want_to_do = gets.chomp
				if want_to_do == "1"
					add_positions	
				elsif want_to_do == "2"
					list_of_applicants
				elsif want_to_do == "3"
					list_of_positions
				elsif want_to_do == "4"
					puts closing
					break
				end
		end

	elsif who_are_you == "2"
		
		
		puts "Would you like to apply for a position with us?"
		puts "Type 1 for Yes"
		puts "Type 2 for No"
		apply = gets.chomp
			if apply == "1"
				puts ""
				puts "These are the positions we are currently looking to fill."
				list_of_positions
				add_applicant
				puts closing
			else
				puts closing
			end
	else
		puts closing
		
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
end

def add_positions
	puts "Please enter the position title you would liek to add to the Now Hiring list."
	position = gets.chomp
	puts "Please enter the hourly wage rate for this position."
	wage = gets.chomp.to_i

	@db.execute("INSERT INTO positions (positions_available, hourly_wage) VALUES (?, ?)", [position, wage])
end

def list_of_applicants
	applicants = @db.execute("SELECT * FROM applicants;")
	puts "--- List of Applicants ---"
	for i in 0...(applicants.length) do
		puts "Name: #{applicants[i]["applicant_name"]} Age: #{applicants[i]["applicant_age"]} Position Desired: #{applicants[i]["position_desired"]}"
	end
end

def list_of_positions
	posted_positions = @db.execute("SELECT * FROM positions;")
	puts "--- Posted Positions---"
	for i in 0...(posted_positions.length) do
		puts "Position: #{posted_positions[i]["positions_available"]} Hourly Wage: $#{posted_positions[i]["hourly_wage"]}"
	end
end

user_interface