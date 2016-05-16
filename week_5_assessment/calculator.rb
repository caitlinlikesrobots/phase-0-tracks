puts "What would you like to calculate? \n Enter your first number. \n Enter 'add', 'subtract', 'multiply', or 'divide'. \n Enter your second number."
	i = gets.chomp.to_i
	o = gets.chomp
	n = gets.chomp.to_i
def calculate (i, o, n)
	if o == "add"
		print i + n
	elsif o == "subtract"
		print i - n
	elsif o == "multiply"
		print i * n
	elsif o == "divide"
		print i / n	
end

print calulate(i, o, n)





	




