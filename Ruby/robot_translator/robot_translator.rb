#Business Logic

def translate_char(char)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	halfway = alphabet.length / 2
	is_capialized = (char.upcase == char)

	if alphabet.index(char.downcase) == nil
		"boing"
	elsif is_capialized && alphabet.index(char.downcase) < halfway
		"bloop"
	elsif is_capialized || char == "e"
		"buzz"			
	else
		"beep"
	end
end

def translate_phrase(phrase)
	char_index = 0
	translated_response = ""
	while char_index < phrase.length
		#puts phrase[char_index]
		translated_response << translate_char(phrase[char_index])
		char_index += 1
	end
	translated_response
end

#puts translate_phrase("Happy Halloween!") == "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

#USER INTERFACE
loop do
	puts "Please enter a phrase (or type 'q' for quit)"
	inputted_phrase = gets.chomp
	break if inputted_phrase == "q"
	puts translate_phrase(inputted_phrase)
end

