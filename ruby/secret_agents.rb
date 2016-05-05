def encrypt(password)
# This is a simpler while loop that moves forward to the next character in the index and changes it using .next
	index = 0

	while index < password.length

		if password[index] == "z"
		   password[index] = "a"
		else
			password[index] = password[index].next
		end
	index += 1
	end
	
	return password

end

def decrypt(password)

	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	while i < password.length
		#I added the .index enumerator so that it would move through the alpha array
		new_index = alphabet.index(password[i]) - 1
		password[i] = alphabet[new_index]
		i += 1
	end

	return password
end

decrypt("hello")