class Post
    attr_reader :influencer
    #You can edit the content of the post
    attr_accessor :content

    @@all = []

    def initialize(content, influencer)
        @content = content
        @influencer = influencer
        save
    end

    def self.all
        @@all
    end

    def likes
        Like.all.select{|like| like.post == self}
    end

    private

    def save
        @@all << self 
    end 
end