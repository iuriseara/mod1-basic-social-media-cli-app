#Are you an influencer or a follower?
require 'pry'
require_relative './console'
require_relative './follow'
require_relative './follower'
require_relative './influencer'
require_relative './like'
require_relative './post'

# IMPORTANT Try logging in as "Lewis Hamilton" or "cindy_233" look at the console.rb file to see who to log in as.




def run
    puts "Welcome, would you like to sign up or log in."
    action = gets.chomp
    
    if action == "sign up"
        puts "Are you an influencer or a follower?"
        type_of_user = gets.chomp
        if type_of_user == "influencer"
            puts "Welcome, what's your name influencer?"
            influencer_name = gets.chomp
            influencer = Influencer.new(influencer_name)
            run
        elsif type_of_user == "follower"
            puts "Welcome, what's your name follower?"
            follower_name = gets.chomp
            puts "What do you want your username to be?"
            follower_user_name = gets.chomp
            follower = Follower.new(follower_name, follow_user_name)
            run
        else
            puts "Try again!"
            run 
        end
    elsif action == "log in"
        puts "Are you an influencer or a follower?"
        type_of_user = gets.chomp
        if type_of_user == "influencer"
            puts "What is your name?"
            name_influencer = gets.chomp
            influencer_logged_in = Influencer.all.find{|influencer| influencer.name == name_influencer}
            puts "Awesome you are logged in, here is your profile:"
            puts "Name: #{influencer_logged_in.name}"
            puts "Followers: #{influencer_logged_in.follower_count}"
            puts "Your Posts:"
            influencer_logged_in.posts.each do |post|
                puts post.content
            end 
        elsif type_of_user == "follower"
            puts "What is your user_name?"
            name_follower = gets.chomp
            follower_logged_in = Follower.all.find{|follower| follower.user_name == name_follower}
            puts "Awesome you are logged in, here is your profile:"
            puts "Name: #{follower_logged_in.name}"
            puts "Following: #{follower_logged_in.influencers.count}"
            puts "Your liked posts:"
            follower_logged_in.likes.each do |like|
                puts "#{like.post.content}"
            end
        else 
            puts "Try again!"  
            run           
        end
    end
end

run