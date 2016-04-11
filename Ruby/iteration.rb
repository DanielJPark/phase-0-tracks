# def take_block
# 	puts "this takes a block"
# 	yield("test1", "test2")
# end

# take_block { |p1, p2| puts "this is the block #{p1} and #{p2}"}

=begin
Practice 

letters = ["a", "b", "c", "d", "e"]

puts "original data:"
p letters

letters.each do |letter| 
	puts letter
	
end

puts "After .each call"
p letters


letters = ["a", "b", "c", "d", "e"]

puts "original data:"
p letters

letters.map! do |letter| 
	puts letter
	letter.next
end

puts "After .map call"
p letters
p modified_letters

=end



superheros = ["Superman", "Batman", "Wonder Woman", "Green Lantern"]
soccer_team = {"striker": 2, "midfield": 4, "fullback": 4, "goalies": 1}
justice_league = []


#.each method
p "superheros and justice_league before .each"
p superheros
p justice_league

superheros.each do |name|
	p name
end

superheros.each do |name|
	justice_league << name + " is a member of the Justice League."
end	

justice_league.each do |member|
	p member
end

p "superheros and justice_league after .each"
p superheros
p justice_league

p "soccer_team before .each"
p soccer_team


soccer_team.each do |position, on_field|
	p "There are #{on_field} #{position} playing."
end




p "soccer_team after .each"
p soccer_team



# .map method

justice_league = superheros.map do |codename|
	p codename
	codename + "'s realname is unknown"
end

p superheros
p justice_league



superheros.map! do |name|
	p name 
	name + " has a secret identity!"
end

p superheros



