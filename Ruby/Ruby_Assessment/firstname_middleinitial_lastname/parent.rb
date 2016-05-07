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

end



#driver code

bob = Parent.new("Bob", 6)
mary = Parent.new("Mary", 4)
bob.greet_child

#p bob.hear_request("Can I get a toy today")
#p bob.hear_request("I would like to to go the movies today and shopping afterwards.")


common_requests= ["Can we go shopping", "Feed me", "Can I go to Johnny's house today", "buy me toy", "Can I have this please"]

common_requests.each do |request|
	bob.hear_request(request)
end

common_requests.each do |request|
	mary.hear_request(request)
end


bob.display_request_history