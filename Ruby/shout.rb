# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " =) "
# 	end
# end

# p Shout.yell_angrily("Hey youk punk!")
# p Shout.yell_happily("Oh why hello there")



module Shout
	def speak_angrily(string)
		puts string.upcase + "!!! >=("
	end

	def speak_happily(string)
		puts string + "! =)"
	end
end


class Sports_Fans
	include Shout
end


class Cop
	include Shout
end

sports_fans = Sports_Fans.new
sports_fans.speak_angrily("Boooo, you guys stink")
sports_fans.speak_happily("We're number 1")

cop = Cop.new
cop.speak_angrily("Stop in the name of the law")
cop.speak_happily("I'm happy to report we caught the bandit")