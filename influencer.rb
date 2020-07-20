class Influencer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def follows
        Follow.all.select{|follow| follow.influencer == self}
    end

    def followers
        self.follows.map{|follow| follow.follower}
    end

    def follower_count 
        self.followers.count
    end


    private

    def save
        @@all << self 
    end

end