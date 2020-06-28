class Actor
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
        Character.all.select do |character|
            character.actor == self
        end
    end

    def character_names
        get_characters.map do |character|
            character.name
        end.uniq
    end
    

    def self.actors_characters
        actor_hash = {}
        self.all.each do |actor|
            actor_hash[actor] = actor.character_names
        end
        actor_hash
    end

    def self.most_characters
        self.actors_characters.sort_by do |actor, characters|
            characters.length
        end.last.first
    end
end