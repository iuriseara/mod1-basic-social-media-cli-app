require 'pry'
require_relative './follow'
require_relative './follower'
require_relative './influencer'
require_relative './like'
require_relative './post'

#Objects to test on
cindy_233 = Follower.new("Cindy Hopkins", "cindy_233")
j_smith1 = Follower.new("Jessica Smith", "j_smith1")
leclerc_forever25 = Follower.new("George Jacobs", "leclerc_forever25")

lewis_hamilton = Influencer.new("Lewis Hamilton")

cindy_233_hamilton = Follow.new(lewis_hamilton, cindy_233)
j_smith1_hamilton = Follow.new(lewis_hamilton, j_smith1)

#tests
Follower.all


Follow.all 

Influencer.all 
lewis_hamilton.followers
lewis_hamilton.follower_count



Pry.start