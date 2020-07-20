class Like
    attr_reader :post, :follower

    @@all = [] 

    def initialize(post, follower)
        @post = post 
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