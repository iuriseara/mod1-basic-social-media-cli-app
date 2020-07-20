class Follow
    attr_accessor :influencer, :follower

    @@all = []

    def initialize(influencer, follower)
        @influencer = influencer 
        @follower = follower
        save
    end

    def self.all
        @@all
    end

    private

    def save
        @@all << self 
    end
end