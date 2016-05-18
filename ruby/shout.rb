=begin
module Shout
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!!" + ":)"
  end
end

p Shout.yell_angrily("Dang it")
p Shout.yelling_happily("Super great")
=end

module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!!" + ":)"
  end
end

class Wrestler
	include Shout
end

class Cheerleader
	include Shout
end

wrestler = Wrestler.new
p wrestler.yell_angrily("Nobody makes me bleed my own blood")
p wrestler.yelling_happily("Happy Birthday, Cactus Jack")

cheerleader = Cheerleader.new
p cheerleader.yell_angrily("That was rude")
p cheerleader.yelling_happily("Win win win win win win")