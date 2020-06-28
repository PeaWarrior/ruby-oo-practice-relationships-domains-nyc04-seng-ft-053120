class Passenger
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
    
    def rides
        Ride.all.select do |ride|
            ride.passenger ==self
        end
    end

    def drivers
        rides.map do |ride|
            ride.driver
        end
    end

    def total_distance
        rides.sum do |ride|
            ride.distance
        end
    end

    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance >= 100
        end
    end

end