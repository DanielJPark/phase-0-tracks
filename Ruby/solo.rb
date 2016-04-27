# pseudocode for class

# create class Basketball_Player
# initialize class
# apply attr_reader and attr_accessor
# create attributes name, number, position
# create methods for dribble, pass, shoot, and steal


class Basketball_Player
	attr_reader :number, :position
	attr_accessor :name

	def initialize(name, number, position )
		puts "Trying out for the position of #{position}... number #{number}... #{name}!"
		@name = name
		@number = number
		@position = position
	end

	def dribble
		puts "#{@name} dribbles the ball. Look at that fancy footwork!" 
	end

	def pass
		puts "#{@name} passes the ball to his teammate. Look at that excellent teamwork!"
	end

	def shoot(points)
		if points == 2 || points == 3
			puts "#{@name} shoots and scores! #{points} more points for number #{@number}!"
		else
			puts "#{@name} shoots and misses the basket... No points for number #{@number}..."
		end
	end

	def steal
		puts "#{@name} steals the ball from the other team! What great defensive play!"
	end

end


#driver code
# michael_jordan = Basketball_Player.new("Michael Jordan", 23, "Point Guard")
# michael_jordan.dribble
# michael_jordan.pass
# michael_jordan.steal
# michael_jordan.name = "Air Jordan"
# puts michael_jordan.number
# puts michael_jordan.position
# michael_jordan.shoot(3)





# pseudocode for interface
# Greet user
# create until loop that breaks when no more new player info is needed.
# ask player for name, number and position.
# inject each player into array.
# return list of players trying out with name number and position.




chicago_bulls = [] 

positions = ["center", "power forward", "small forward", "point guard", "shooting guard"]
tryout = nil

puts "Welcome to the team tryouts for the Chicago Bulls!"

until tryout == "n"
	puts "Please answer the following questions before you try out for the team."
	
	puts "What is your full name?"
		name = gets.chomp.downcase
	
	puts "What number would you like to wear?"
		number = gets.chomp.to_i
	puts "What position will you be trying out for? (Center, Power Forward, Small Forward, Point Guard, Shooting Guard)"
		position = nil
		until positions.include? position
			position = gets.chomp.downcase
				if positions.include? position
					position
				else 
				puts "That position does not exist. Please enter the position you would like to tryout for."
				end
		end
	
	new_player = Basketball_Player.new(name, number, position)
		chicago_bulls << new_player
	
	puts "Would you like to enter another new player to the tryout list? (y/n)"
		tryout = gets.chomp
end

def titlize(string)
	capitalized_string = []
	string.split(" ").each do |word|
	word.capitalize!
	capitalized_string << word
	end
	capitalized_string.join(" ")
end

titlize("hello everyone")


puts "Chicago Bulls New Player Candidates"
number_trying_out = chicago_bulls.length

if number_trying_out > 1
	puts "There are #{number_trying_out} players trying out for the team."
else
	puts "There is #{number_trying_out} player trying out for the team today."
end

chicago_bulls.each do |player|
	

	puts "Name: #{titlize(player.name)}"
	puts "Number: #{player.number}"
	puts "Position: #{titlize(player.position)}"
	puts ""
end

