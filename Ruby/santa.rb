class Santa

	attr_reader :ethnicity
	attr_accessor :name, :gender, :age

	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance"
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def about
		puts "#{@name}"
		puts "#{@gender}"
		puts "#{@ethnicity}"
		puts "#{@age}"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end

	def celebrate_birthday
		@age += 1
	end

# #getter methods

# 	def name
# 		@name
# 	end

# 	def age
# 		@age
# 	end

# 	def ethnicity
# 		@ethnicity
# 	end

# #setter methods

# 	def gender=(new_gender)
# 		@gender = new_gender
# 	end

end


# nick = Santa.new("male","caucasian")
# nick.about
# nick.speak
# nick.eat_milk_and_cookies("snickerdoodle")

santas = []

names = ["Nick", "Nik", "Nickolaus", "Nicky", "Nikki", "Nickie", "Saint Nick", "Jolly Ol Nick"]
ethnicities = ["white", "black", "asian", "european", "south american", "hispanic", "latino", "middle eastern"]
gender = ["male", "female", "transgender", "agender", "bgender", "no gender", "all gender", "every gender"]

names.length.times do |i|
	santas << Santa.new(names[i],gender[i],ethnicities[i])
end


p santas
santa = Santa.new("St Nick", "male", "White")
puts santa.name

p santas[0].name

p santa.celebrate_birthday
p santa.celebrate_birthday
p santa.celebrate_birthday
p santa.gender = "super_male"
p santa.get_mad_at("Dasher")
p santa.ethnicity
p santa.age
p santa.name
p santa.name = "Jolly Ol' Saint Nick"
#p santa

random_santas = []

for i in 1 .. 100
	santa = Santa.new(names.sample, gender.sample, ethnicities.sample)
	santa.age = rand(0..140)
	random_santas << santa
end

random_santas

puts random_santas[45].name
puts random_santas[32].name
puts random_santas[22].age





