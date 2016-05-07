# #pseudocode for longest word method in past_requests
# iterate over a hash and make a requests array with all keys.
# create a longest_string array that contains an empty string
# iterate over the requests array taking the first item counting the string's length
# if the string's length is greater than longest_string[0]'s length, set it equal to longest_string[0].
#elsif it the string's length is equal to longest_string[0]'s length, add it to the longest_string array.
# repeat until all items in array have been processed.
# print/return all items in longest_string array.





class Parent

	attr_accessor :name

	def initialize(name, hours_slept)
		@name = name
		@hours_slept = hours_slept
		@past_requests = {}
	end

	def greet_child
		puts "*yaaaawn* I'm up, I'm up. #{@name} is up. What's the matter?"
	end

	def hear_request(request)
		if request.split(" ").length <= @hours_slept
			@past_requests[request] = "Accepted"
			puts "Okay, since you said #{request} so nicely."
			p @past_requests
			true
		else
			@past_requests[request] = "Rejected"
			puts "Not today, sweetie."
			p @past_requests
			false
		end
	end

	def display_request_history
		@past_requests.each do |request, answer|
			puts "The child's request: #{request}, was #{answer}"
		end
	end

	def take_nap
		@hours_slept += 1
	end

	def drink_coffee
		@hours_slept += 1
	end
end



# #driver code
# bob = Parent.new(bob,6)
# p bob.drink_coffee
# p bob.take_nap
# bob = Parent.new("Bob", 6)
# mary = Parent.new("Mary", 4)
# bob.greet_child

# #p bob.hear_request("Can I get a toy today")
# #p bob.hear_request("I would like to to go the movies today and shopping afterwards.")


# common_requests= ["Can we go shopping", "Feed me", "Can I go to Johnny's house today", "buy me toy", "Can I have this please"]

# common_requests.each do |request|
# 	bob.hear_request(request)
# end

# common_requests.each do |request|
# 	mary.hear_request(request)
# end


# bob.display_request_history

# p bob.make_array

#Question 9 User Interface


puts "Hello! Please enter your parent's first name."
name = gets.chomp
puts "Please enter the number of hours #{name} slept last night."
hours_slept = gets.chomp.to_i
name = Parent.new(name, hours_slept)


rejected_requests = []
loop do

puts "What would you like to request from #{name.name}?"
request = gets.chomp
# requests << request
# p requests.push request
if request == ""
	puts "You did not make a request. Please try again."
else

name.hear_request(request)

	if rejected_requests.length < 5	
		if name.hear_request(request) == false && !rejected_requests.include?(request)
		p rejected_requests << request
		p rejected_requests.length
		elsif
			rejected_requests.include?(request)
				puts "You already made that request. Please try again."
		end
	else
		puts "Looks like it's naptime!"
		break
	end
end

end




