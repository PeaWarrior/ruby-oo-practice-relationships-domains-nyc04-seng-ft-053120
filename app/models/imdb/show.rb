class Show
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

    def characters
        Characters.all.select do |character_insta|
            character_insta.film == self
        end
    end

    def on_the_big_screen
        Movie.all.select do |movie_insta|
            movie_insta.name == self.name
        end
    end

end