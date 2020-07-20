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

    private

    def save
        @@all << self 
    end
end