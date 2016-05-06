def encrypt(string)
  index = 0
  encrypt_string = string
  while index < string.length
#I added the conditional logic for edge cases
    if string[index] == "z"
      string[index] = "a"
    elsif string[index] == " "
      encrypt_string[index] = string[index]
    else
      encrypt_string[index] = string[index].next
      index += 1
    end
  end
#I added "return" so that we get the most up-to-date results. 
  return encrypt_string
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  alpha_index = 0
  decrypt_string = string
  while index < string.length
    if string[index] == " "
      decrypt_string[index] = string[index]
      index += 1
    else
      until string[index] == alphabet[alpha_index]
       alpha_index += 1
      end
      decrypt_string[index] = alphabet[alpha_index - 1]
      #Forgot to make the index add up here which 
      #was causing the infinate loop
      index += 1
    end
    alpha_index = 0
  end
  return decrypt_string
end

encrypted_pass = encrypt("abc")
decrypted_pass = decrypt(encrypted_pass)

#Asks for decryptiong or encryption
puts "Hello. Would you like to encrypt or decrypt your password today? Please put 'e' or 'd'."
choice = gets.chomp.downcase

#Asks for password
puts "What is your password?"
password = gets.chomp

if choice == "e"
  puts "Your excrypted password is #{encrypt(password)}"
elsif choice == "d"
  puts "Your decrytped password is #{decrypt(password)}"
else puts "I didn't understand. Could you repeat that? Please put 'e' or 'd'."
end