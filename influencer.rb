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

    def followers
        
    end

    private

    def save
        @@all << self 
    end

    def follows
        Follow.all.select{|follow| follow.influencer == self}
    end
end