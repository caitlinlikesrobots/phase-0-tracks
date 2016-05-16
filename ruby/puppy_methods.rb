class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	i.times { puts "Woof!" }
  end

  def roll_over
  	puts "*rolls over*"
  end 

  def dog_years(human_years)
  	puts human_years / 7
  end

  def sit_pretty
  	puts "I am sitting pretty"
  end

end

# initialize new instance of Puppy class
scruffy = Puppy.new

# verification of Scruffy's ability to fetch
scruffy.fetch("sock")
scruffy.speak(3)
scruffy.roll_over
scruffy.dog_years(50)
scruffy.sit_pretty


# Release 2

class Robot_Army

	def initialize
		puts "Initializing new robot army instance..."
  	end

  	def robo_speak
  		puts "Beep bloop bleep!"
  	end

  	def robo_swim
  		puts "Robot army able to swim!"
  	end
end

robo_array = []


base_name = "robot"
robot_num = 50
robot_num.times do |x|
	robo_array[base_name + x.to_s]
end
p robo_array

