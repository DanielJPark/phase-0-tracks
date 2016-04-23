# pseudocode


# take full name and split into array
# take full name and split letters into an array name
# reverse array name and join
# iterate over each letters in reversed_name
# 	if letter == vowel
# 		return next vowel
# 		add to string new_name
# 	elsif letter == consonant before vowel
# 		return next consonant
# 		add to string new_name
# 	else 
# 		return next letter
# 		add to string new_name
# 	end
# return new_name



# release 0

def fake_name(full_name)
	i = 0	
	name = full_name.downcase.split(" ")
	reversed_name = name.reverse.join(" ")
	new_name = ""
	
	until i == reversed_name.length
		letter = reversed_name[i]
		if letter == " "
			new_name += " "
		elsif letter == "a"
			new_name += "e"
		elsif letter == "e"
			new_name += "i"
		elsif letter == "i"
			new_name += "o"
		elsif letter == "o"
			new_name += "u"
		elsif letter == "u"
			new_name += "a"
		elsif letter == "z"
			new_name += "b"
		elsif letter == "d"
			new_name += "f"
		elsif letter == "h"
			new_name += "j"
		elsif letter == "n"
			new_name += "p"
		elsif letter == "t"
			new_name += "v"
		else
		  	new_name += letter.next
		end
		new_name
		i+=1
	end
	
	capitalized = new_name.split(" ")
	capitalized_name = []
	capitalized.each do |name|
		capitalized_name << name.capitalize
	end
	codename = capitalized_name.join(" ")
end




#release 1 & 2

# pseudocode
# ask user for full name
# set full name to ""
# set codename to ""
# initialize list_of_agents as empty hash
# create while loop to run if not == quit
# run fake_name program
# return full name and codename and add to hash list_of_agents
# ask user for another name or to quit
# print list of agents printing agent name and codename 



puts "Please enter your full name?"
full_name = ""
codename = ""
list_of_agents = {}

while full_name != "quit"
	full_name = gets.chomp
		if full_name != "quit"
			full_name
			codename = fake_name(full_name)
			puts "Your codename is #{codename}."
			list_of_agents[full_name] = codename	
			p "Please enter another name? If not type 'quit'!"
		end
end

list_of_agents.each do |agent, codename|
	puts "#{agent} is one of our agents. Codename : #{codename}."
end
