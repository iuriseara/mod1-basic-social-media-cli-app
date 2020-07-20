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
charles_leclerc = Influencer.new("Charles Leclerc")


cindy_233_hamilton = Follow.new(lewis_hamilton, cindy_233)
cindy_233_leclerc = Follow.new(charles_leclerc, cindy_233)
j_smith1_hamilton = Follow.new(lewis_hamilton, j_smith1)

lewis_hamilton_post1 = Post.new("Just won the Hungarian GP! Couldn't have done it without such a great team!", lewis_hamilton)
lewis_hamilton_post2 = Post.new("The car is performing magnificently this season.", lewis_hamilton)

cindy_233_like1 = Like.new(lewis_hamilton_post1, cindy_233)
j_smith1_like1 = Like.new(lewis_hamilton_post1, j_smith1)
#tests
Follower.all
cindy_233.influencers

Follow.all 

Influencer.all 
lewis_hamilton.followers
lewis_hamilton.follower_count
lewis_hamilton.posts
lewis_hamilton.total_likes

Post.all
lewis_hamilton_post1.likes


#Pry.start