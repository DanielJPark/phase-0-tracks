


# if known_vampires.any? { |known| known == name}
# 	puts true
# end

# def are_you_vamp(name, array)
# 	i = 0; i <= array.length; i += i
# 	#p i
# 	if name == array[i]
# 	puts true
# 	end 
# end


# def are_you_vamp(name, array)
# 	if array.any? { |known| known == name}
# 		puts true
# 	end
# end


# def print_names(array)
# 	array.each do |name|
# 		puts name
# 	end
# end

# print_names(known_vampires)
p "Welcome to Werewolf Inc, where quitting time is before always before sundown! Thank you for taking the time out of your busy schedule in order to interview with our company. In order to determine whether or not you are a good fit for us we would like for you to answer a few questions about yourself. Let's get started!"


p "How many employee's will be interviewed today?"
number_of_employee = gets.chomp.to_i
if number_of_employee >= 1
	loop do

		number_of_employee = number_of_employee - 1

		p "What is your name?"
		your_name = gets.chomp.upcase
		known_vamps = [ "ALESSANDRO","AMBROGINO","AMBROGIO","ARNOLDO","BALDOVINO","BALDASSARE","BERTOLDO","BONAVENTURA","BONIFACIO","CIRINO","CIRO","CLEMENTE","DARIO","DOMENICO","EDMONDO","EDOARDO","EGIDIO","ELIGIO","ELIODORO","EMILIO","ERMANNO","ETTORE","FARAMUNDO","FINO","GASPARE","GREGARIO","GUALTIERO","LEANDRO","MARCO","MASSIMO","NERIO","NUNZIO","ORAZIO","ORFEO","PELLEGRINO","PONZIO","RAUL","RODOLFO","SANSONE","SILVANO","TACITO","UMFREDO"]

		if known_vamps.any? {|vamp_name| vamp_name == your_name}		
			vamp_name_match = true

		else
			vamp_name_match = false
		end

		puts "How old are you?"
		age = gets.chomp.to_i

		puts "What year were you born?"
		birth_year = gets.chomp.to_i

		if 2016 - birth_year != age && 2016 - birth_year != age + 1
			vamp_age = true
		else
			vamp_age = false
		end
		puts "Should the cafeteria order garlic bread? y/n"
		garlic_bread = gets.chomp.downcase
		if garlic_bread == "n"
			vamp_garlic = true

		else vamp_garlic = false
		end
		puts "Would you like to enroll in the company's health insurance plan? y/n"
		health_insurance = gets.chomp.downcase
		if health_insurance == "n"
			vamp_health_insurance = true

		else vamp_health_insurance = false
		end
		allergies = []
		allergic_sun = false
		loop do
			puts "Please list all allergies."
			allergy = gets.chomp
			
				if allergy == "done"
					break
				elsif allergy == "none"
				 	break
				elsif allergy != "sunlight"
					allergies << allergy
				elsif allergy == "sunlight"
					allergies << allergy
					allergic_sun = true
					break
				end
		end
		

# p vamp_name_match
# p vamp_age
# p vamp_garlic
# p vamp_health_insurance

	if vamp_name_match
		result = "Definitely are a vampire!"
	elsif allergic_sun || (vamp_age && ( vamp_garlic || vamp_health_insurance))
		result = "Probably a vampire."
	elsif !vamp_age && ( !vamp_garlic || !vamp_health_insurance)
		result = "Probably not a vampire"
	elsif vamp_age && vamp_garlic && vamp_health_insurance
		result = "Almost certainly a vampire!"
	else 
		result = "Results inconclusive"
	end


	puts "Name: #{your_name.capitalize}"
	puts "Birth Year: #{birth_year}"
	puts "Likes Garlic Bread: #{garlic_bread}"
	puts "Enrolling in Health Insurance: #{health_insurance}"
	puts "Your allergies include:" 
	allergies.each do |thing|
			print "#{thing}"
			print " "
	end
	puts
	puts "Results: #{result}"

	break if number_of_employee < 1

	end
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends. Thank you have a great day!"





