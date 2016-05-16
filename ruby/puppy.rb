
=begin SPECIES ------------------------
Canis lateus amplexus

create hash
CHARACTERISTICS ----------------
Ability to hug: scale of 1 to 10
Friendly: yes
Tail_wag: scale of 1 to 10
Loud_bark: scale of 1 to 10
Name: varies
Color: varies

create array
BEHAVIOR -----------------------
Quiet
Hug
Frisbee all star
=end

#defines new puppy class
class Puppy
	# names the species with design
	print " SPECIES:\n Canis lateus amplexus"
	# prints characteristics in hash
	print "\n ----------------------- \n CHARACTERISTICS \n ----------------------- \n"
	pup_details = {"Hugs" => 8, 
					"Friendly" => true, 
					"Tail_wag" => 7, 
					"Loud_bark" => 3, 
					"Name" => "Monty", 
					"Color" => "Purple"
				  }
	pup_details.each do |characteristic, specialty|
		puts "#{characteristic}: #{specialty}"
	end
	# prints behavior in array
	print "\n ----------------------- \n BEHAVIOR \n ----------------------- \n"
	pup_behavior = ["Quiet", "Hug", "Frisbee superstar", "Snuggler"]
	puts pup_behavior
end
