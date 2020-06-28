class Client
    attr_reader :name, :trainer
    @@all = []
    
    def initialize(name, trainer = nil)
        @name = name
        @trainer = trainer
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        @trainer = trainer
    end
end