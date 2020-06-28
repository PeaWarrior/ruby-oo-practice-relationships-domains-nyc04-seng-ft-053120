class Ride
    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    
    def self.average_distance
        total_distance/total_rides
    end
    
    private

    def self.total_rides
        self.all.count
    end

    def self.total_distance
        self.all.map do |ride|
            ride.distance
        end
        .inject do |total, distance|
            total + distance
        end
    end

end