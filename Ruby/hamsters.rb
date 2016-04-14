

puts "Hello and welcome to the Hamster Adoption Center. Please answer the following questions regarding your hamster."

puts "What is your hamster's name?"
name = gets.chomp.to_s.capitalize

puts "What is your hamster's volume level? 1-10"
volume = gets.chomp.to_i

puts "What color is your hamster?"
color = gets.chomp.to_s

puts "Will your hamster be good for adoption? y/n"
adopt = gets.chomp.downcase
  if adopt == "y"
    adopt = true
  else
    adopt = false
  end

puts "How old is your hamster?"
#age = nil
age = gets.chomp#.to_i
  if age == ""
     age = nil
  else 
    age = age.to_i
  end

puts "What is your hamster sex? m/f"
sex = gets.chomp.to_s
  if sex == "m"
    sex = "male"
  elsif sex == "f"
    sex = "female"
  else
    sex = nil
  end

correct = ""
puts "Thank you for creating a profile for your hamster #{name}!"

while correct != "y"



puts
puts "Hamster's Name: #{name}"
puts "Volume Level: #{volume}"
puts "Color: #{color}"
puts "Good for adoption: #{adopt} "
puts "Age: #{age}"
puts "Sex: #{sex}"
puts
puts "Is this information correct? y/n"
puts

correct = gets.chomp
  if correct != "y"
    puts "What needs correcting? (name, volume, color, adoptable, age, sex)"
    correction = gets.chomp.downcase
      if correction == "name"
        puts "Please enter your hamster's correct name"
        name = gets.chomp.capitalize
      elsif correction == "volume"
        puts "Please enter your hamster's correct volume level.(1-10)"
        volume = gets.chomp.to_i
      elsif correction == "color"
        puts "Please enter your hamster's correct color."
        color = gets.chomp
      elsif correction == "adoptable"
        puts "Is your hamster good for adoption? y/n"
        adopt = gets.chomp
        if adopt == "y"
          adopt = true
        else
          adopt = false
        end
      elsif correction == "age" 
        puts "Please enter your hamster's correct age"
        age = gets.chomp
      elsif correction == "sex"
        puts "Please enter your hamster's correct sex. m/f"
        sex = gets.chomp
      end
  end
end

puts "Thank you for submitting #{name}'s profile for adoption."



        


