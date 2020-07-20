class Influencer
    #You can change your name
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

    def posts
        Post.all.select{|post| post.influencer == self}
    end

    def likes
        Like.all.select{|like| self.posts.include?(like.post)}
    end 

    def total_likes
        self.likes.count 
    end

    private

    def save
        @@all << self 
    end
end