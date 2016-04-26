

class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

	def fetch(toy)
		puts "Puppy brought back the #{toy}!"
	end

	def speak(number)
		number.times do 
			puts "Woof!" 
		end
	end

	def roll_over
		puts "*rolls over*"
	end
	
	def dog_years(years)
		puts years * 7
	end

	def go_to_bed(name)
		puts "#{name} goes to bed."
	end

end

peanut = Puppy.new
peanut.fetch("ball")
peanut.speak(5)
peanut.roll_over
peanut.dog_years(5)
peanut.go_to_bed("Peanut")


class Basketball_Player

	def initialize
		puts "Initializing new Basketball Player instance..."
	end

	def shoots(number)
		if number == 2 || number == 3
			puts "Shoots and makes a basket.. #{number} points!"
		else
			puts "Shoots and misses the basket..."
		end
	end

	def rebounds
		puts "Rebounds a missed shot."
	end

	def passes
		puts "Passes the ball."
	end
end

# kobe = Basketball_Player.new
# kobe.shoots(3)
# kobe.shoots(2)


basketball_team_tryouts = []

for i in 1..50 
	player = Basketball_Player.new 
	basketball_team_tryouts << player
end

#p basketball_team_tryouts

basketball_team_tryouts.each do |baller|
	baller.shoots(2)
	baller.shoots(3)
	baller.shoots(4)
	baller.rebounds
	baller.passes
end
	