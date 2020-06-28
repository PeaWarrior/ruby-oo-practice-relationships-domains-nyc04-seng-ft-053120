class Movie
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end
    def self.all
        @@all
    end
    def save
        self.class.all << self
    end

    def get_characters
        Character.all.select do |char_instance|
            char_instance.film == self
        end
    end

    def actors
        self.get_characters.map do |character_inst|
            character_inst.actor
        end
    end

    def self.most_actors
        self.all.sort_by do |movie_inst|
            movie_inst.actors.count
        end.last
    end

end