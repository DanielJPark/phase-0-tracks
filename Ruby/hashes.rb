=begin
pseudocode

initialzie empty hash
Greet the new client and ask them to answer questions
prompt user for name, age, marital status, decor theme
return all information to client and ask if it is correct.
allow for corrections.
ask again until all info is correct
return upated information with message saying client will be contacted shortly.

	
=end
p "Hello! Please answer the following questions"
new_client = {}
p "What is your name?" 
new_client[:name] = gets.chomp.capitalize

p "How old are you?"
new_client[:age] = gets.chop.to_i

p "What is your marital status? (married/single)"
new_client[:married] = gets.chomp.downcase
	if new_client[:married] == "married"
		new_client[:married] = true
		puts "What is your spouse's name?"
		new_client[:spouse] = gets.chomp.capitalize
	else new_client[:married] = false
		new_client[:spouse] = nil
	end
p "Do you have any children? (y/n)"
new_client[:children] = gets.chomp.downcase
	if new_client[:children] == "y"
		new_client[:children] = true
		puts "How many?"
		new_client[:number_of_children] = gets.chomp.to_i
	else new_client[:children] == "n"
		new_client[:children] = false
		new_client[:number_of_children] = nil
	end
p "Please enter your email address"
new_client[:email] = gets.chomp.to_s



correct = "n"
while correct == "n"
p new_client
p "Is all of your information correct?(y/n)"
	correct = gets.chomp.downcase
		if correct == "n"			
			p "what item needs correction? (name, age, marital status, children, email)"
		correction = gets.chomp.downcase
			if correction == "name"
				p "What is your name?" 
				new_client[:name] = gets.chomp.capitalize
			
			elsif correction == "age"
				p "How old are you?"
				new_client[:age] = gets.chop.to_i

			elsif correction == "marital status"
				
				p "What is your marital status? (married/single)"
				new_client[:married] = gets.chomp.downcase
					if new_client[:married] == "married"
						new_client[:married] = true
						puts "What is your spouse's name?"
						new_client[:spouse] = gets.chomp.capitalize
					else new_client[:married] = false
						new_client[:spouse] = nil
					end

			elsif correction == "children"
				
				p "Do you have any children? (y/n)"
				new_client[:children] = gets.chomp.downcase
					if new_client[:children] == "y"
						new_client[:children] = true
						puts "How many?"
						new_client[:number_of_children] = gets.chomp.to_i
					else new_client[:children] == "n"
						new_client[:children] = false
						new_client[:number_of_children] = nil
					end
			elsif correction == "email"
				
				p "Please enter your email address"
				new_client[:email] = gets.chomp.to_s	
			end
		end		
end


p "Thank you #{new_client[:name]}, we will contact you shortly via email." 




