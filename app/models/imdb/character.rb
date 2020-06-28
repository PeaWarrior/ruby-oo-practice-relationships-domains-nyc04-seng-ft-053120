class Character
    @@all = []
    attr_reader :name, :film, :actor
    def initialize(name, film, actor)
        @name = name
        @film = film
        @actor = actor
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def self.character_counts
        char = {}
            self.all.each do |character_insta|
                if char[character_insta.name]
                    char[character_insta.name] +=1
                else
                    char[character_insta.name] = 1
                end
            end
        char
    end

    def self.most_appearances
        self.character_counts.sort_by {|key, val| val}.last.first
    end

end