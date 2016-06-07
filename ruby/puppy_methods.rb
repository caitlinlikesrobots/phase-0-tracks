class Puppy

  def initialize
     puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number_of_woofs)
    number_of_woofs.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    7 * human_age
  end

  def play_dead
    puts "..."
  end

end

# spike = Puppy.new
# spike.fetch("ball")
# spike.speak(3)
# spike.roll_over
# p spike.dog_years(10)
# spike.play_dead

class Ghost 

  def initialize
    
  end

  def haunt
    puts "I'm here to haunt you."
  end

  def appear
    puts "A ghost appears in the mirror behind you."
  end

end

ghost_array = []
50.times { |index| ghost_array[index] = Ghost.new } 

ghost_array.each do |ghostie|
  ghostie.appear
  ghostie.haunt
end
