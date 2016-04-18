# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => "InVeStIgAtIoN"

puts "zom".sub("zom","zoom")
puts "zom".gsub("o","oo")
puts "zom".sub("o", "oo")
puts "zom".delete("m").concat("om")
puts "zom".chop + ("om")
puts "zom".chars.insert(1,"o").join
# => "zoom"

puts "enhance".center(15)
puts "enhance".sub("enhance", "    enhance    ")
puts "enhance".rjust(11, "    ") + ("    ")
puts ("enhance".reverse + ("    ")).reverse + ("    ")
#=> "    enhance    "

puts "Stop! You’re under arrest!".upcase
puts "Stop! You're under arrest!".downcase!.swapcase

puts "the usual".concat " suspects"
puts "the usual" + " suspects"
puts "the usual" << " suspects"
puts "the usual".sub("the usual", "the usual suspects")
#=> "the usual suspects"

puts " suspects".rjust(18, "the usual")
puts " suspects".sub(" ", "the usual ")
#=> "the usual suspects"

puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".slice(0..38)
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete("T")
puts "The mystery of the missing first letter".slice(1..38)
puts "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
puts "Elementary,    my   dear        Waston!".split.join(" ")
# => "Elementary, my dear Watson!"

puts "z".ord
puts "z".codepoints
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#It is the codepoint of the character "z"

puts "How many times does the letter 'a' appear in this string?".count("a")
#=> 4

#p "hello".delete[2]