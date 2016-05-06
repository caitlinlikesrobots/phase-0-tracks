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
    if string[index] == "a"
           string[index] = "z"
    elsif string[index] == " "
      decrypt_string[index] = string[index]
      index += 1
    else
      until string[index] == alphabet[alpha_index]
       alpha_index += 1
      end
      decrypt_string[index] = alphabet[alpha_index - 1]
      #Forgot to make the index add up here which 
      #was causing the infinite loop
      index += 1
    end
    alpha_index = 0
  end
  return decrypt_string
end

#This method nest operates by working on the inside 
#parenthesees followed by working on
#the method outside.
# decrypt(encrypt("swordfish"))

#Asks for decryptiong or encryption
puts "Hello. Would you like to encrypt or decrypt your password today? Please put 'e' for encryption or 'd' for decryption."
valid_choice = false
  until valid_choice 
    choice = gets.chomp.downcase
if choice == "e" || "d"
   valid_choice = true
else puts "I didn't understand. Could you repeat that? Please put 'e' or 'd'."
end
end

#Asks for password
puts "What is your password?"
password = gets.chomp

if choice == "e"
  puts "Your excrypted password is #{encrypt(password)}"
elsif choice == "d"
  puts "Your decrytped password is #{decrypt(password)}"
else puts "We've encountered an error. I apologize. Please try again."
end