class Trainer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
    
    def locations
        Locations.all.select do |location|
            location.trainers.include?(self)
        end
    end

    def clients
        Client.all.select do |client|
            client.trainer == self
        end
    end

    def total_clients
        clients.count
    end

    def self.most_clients
        self.all.sort_by do |trainer|
            trainer.clients.count
        end
        .last
    end
end