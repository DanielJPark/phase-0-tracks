require 'sqlite3'
require 'faker'

#create SQLite3 database

db = SQLite3::Database.new("job_applications.db")
db.results_as_hash = true


create_applicants_table = <<-SQL
	CREATE TABLE IF NOT EXISTS applicants (
		id INTEGER PRIMARY KEY,
		applicant_name VARCHAR(255),
		age INT,
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

