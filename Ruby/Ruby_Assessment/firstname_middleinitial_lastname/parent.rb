class Parent

	attr_accessor :name

	def initialize(name, hours_slept)
		@name = name
		@hours_slept = hours_slept
	end

	def greet_child
		puts "*yaaaawn* I'm up, I'm up. #{@name} is up. What's the matter?"
	end

end



#driver code

p bob = Parent.new("Bob", 6)
p mary = Parent.new("Mary", 4)
p bob.greet_child