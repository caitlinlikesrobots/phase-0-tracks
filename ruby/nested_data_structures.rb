# A Mansion Filled with Guests, Ghosts, and SpooOooky Times!

# Create outer hash of Mansion 
mansion = {

# Create array of guests
	guests: [
		"Charlamagne Money", 
		"Jessica Lightingale",
		"Kristoff Belvedere", 
		"Gordon Gilmore",
		"Jens Starsgaard", 
		"his Pet Tiger, Leonard"
	],

# Create nested hash of ghosts 
	ghosts: {
		ghost1: {
				name: "Henry", 
				character: "The Friendly Mailman", 
				age_at_demise: 94,
				year_of_demise: 1937,
				activity: "Fetches the mail. From the entire neighborhood.",
			   },

		ghost2: {
				name: "Susie", 
				character: "The Laughing Child", 
				age_at_demise: 7,
				year_of_demise: 1864,
				activity: "Laughs at any given time. It is a bit creepy.",
			   },
		
		ghost3: {
				name: "Dylan", 
				character: "The Rebellious Teenager", 
				age_at_demise:18,
				year_of_demise: "Unwilling to say.",
				activity: "Smokes ghost cigarettes and can often be heard muttering 'phonies' regarding guests.",
			   },
			},
}

# p mansion

p mansion [:guests][5]
p mansion [:guests].reverse
p mansion [:ghosts][:ghost1].fetch(:name)
p mansion [:ghosts][:ghost3].values
p mansion [:guests].rotate(2)
p mansion [:ghosts][:ghost3].fetch(:activity)
p mansion [:ghosts][:ghost1].fetch(:year_of_demise)