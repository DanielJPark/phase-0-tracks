# release 1

# each
marvel_movies = ["Ironman", "Captain America", "Thor", "Avengers", "Ant-Man"]
back_to_the_future = {
	"Marty McFly": "Michael J Fox",
	"Doc Brown": "Christopher Lloyd",
	"Lorraine Baines": "Lea Thompson",
	"George McFly": "Crispin Glover",
	"Biff Tannen": "Thomas F Wilson",
}

marvel_movies.each do |title|
	p title
end

back_to_the_future.each do |role, actor|
	p "#{role} played by #{actor}"
end

back_to_the_future.each do |role, actor|
	p "Starring #{actor}"
end

#map

updated_marvel_movies = marvel_movies.map do |movie|
	movie + " was a great movie"
end

p marvel_movies
p updated_marvel_movies
#p updated_marvel_movies

roles = back_to_the_future.map do |role, actor|
	p "#{role} played by #{actor}"
end


p roles


#map!

marvel_movies.map! do |movie|
	p movie + " by Marvel Studios"
	"#{movie} produced by Marvel"
end

p marvel_movies



# release 2


#1

numbers = [ 1, 4, 7, 3, 8, 9, 10, 2]


p numbers.delete_if {|number| number < 5}

letters = {"a": 1, "b": 2, "c": 3, "d": 4}

p letters.delete_if {|letter, num| num > 2}


#2
numbers = [ 1, 4, 7, 3, 8, 9, 10, 2]
p numbers.keep_if {|number| number < 5}

letters = {"a": 1, "b": 2, "c": 3, "d": 4}
p letters.keep_if {|letter, num| num.even?}



#3

more_numbers = [32,46,2,3,6,7,4,8,9,22,5]
p more_numbers.select {|num| num.odd? }

letters = {"a": 1, "b": 2, "c": 3, "d": 4}
p letters.select {|letter, num| num.odd?}

#4
more_numbers = [32,46,2,3,6,7,4,8,9,22,5]

p more_numbers.reject{|even_num| even_num % 2 == 0}

letters = {"a": 1, "b": 2, "c": 3, "d": 4}
p letters.reject {|letter, num| num <= 2}
