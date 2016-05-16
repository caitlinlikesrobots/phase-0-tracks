class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# initialize new instance of Puppy class
scruffy = Puppy.new

# verification of Scruffy's ability to fetch
p scruffy.fetch("sock")