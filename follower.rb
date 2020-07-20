class Follower
    #You can change your name
    attr_accessor :name, :user_name

    @@all = []

    def initialize(name, user_name)
        @name = name
        @user_name = user_name
        save
    end

    def self.all
        @@all
    end

    def follows
        Follow.all.select{|follow| follow.follower == self}
    end

    def influencers
        self.follows.map{|follow| follow.influencer}
    end

    
    def likes
        Like.all.select{|like| like.follower == self}
    end

    private

    def save
        @@all << self 
    end
end