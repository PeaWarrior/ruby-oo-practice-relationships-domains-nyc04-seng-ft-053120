class Driver
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
            ride.driver == self
        end
    end

    def passengers
        rides.map do |ride|
            ride.passenger
        end
    end

    def total_distance
        rides.sum do |ride|
            ride.distance
        end
    end
    
    def self.mileage_cap(distance)
        self.all.select do |driver|
            driver.total_distance > distance
        end
    end
end