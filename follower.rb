class Follower
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

    private

    def save
        @@all << self 
    end
end