def prev_char(single_letter)
  (single_letter.ord - 1).chr
end


def encrypt(string)
	i = 0
	encrypted_string = ""
	until i == string.length
		#p string[i].next
		if string[i] == "z"
			encrypted_string = encrypted_string + "a"
		elsif string[i] == "Z"
			encrypted_string = encrypted_string + "A"
		else
		encrypted_string = encrypted_string + string[i].next
		end
	i += 1
	end
	encrypted_string
end

encrypt("hello")


def decrypt(string)
	i = 0
	decrypted_string = ""
	until i == string.length
		if string[i] == "a"
			decrypted_string = decrypted_string + "z"
		elsif string[i] == "A"
			decrypted_string = decrypted_string + "Z"
		else
		decrypted_string = decrypted_string + prev_char(string[i])
		end
		i += 1
	end
	decrypted_string
	
end

#p decrypt("ifmmp")

#p encrypt(decrypt("hello"))

puts "Hello Secret Agent."

loop do
puts "Would you like to encrypt or decrypt a password?"
action = gets.chomp
	if action == "encrypt"
		puts "Please enter the password."
		password = gets.chomp
		p encrypt(password) 
		break

	elsif action == "decrypt"
		puts "Please enter the password."
		password = gets.chomp
		p decrypt(password)
		break

	else
		p "Incorrect command. Try again"
	end
end
