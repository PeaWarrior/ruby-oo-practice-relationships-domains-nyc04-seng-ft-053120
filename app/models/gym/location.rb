class Location
    attr_accessor :trainers
    attr_reader :place
    @@all = []

    def initialize(place)
        @place = place
        @trainers = []
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def hire_trainer(trainer)
        @trainers << trainer
    end

    def clients
        trainers.map do |trainer|
            trainer.clients
        end
        .flatten
    end

    def self.least_clients
        self.all.sort_by do |location|
            location.clients.count
        end
        .first
    end
end