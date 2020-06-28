class Listings
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
    
    def guests
        trips.map do |trip|
            trip.guest
        end.uniq
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        trips_taken.sort_by do |trip, times|
            times
        end.last[0]
    end

    private

    def trips
        Trips.all.select do |trip|
            trip.listing == self
        end
    end
    
    def self.trips_taken
        trips_taken = {}
        Trips.all.each do |trip|
            trips_taken[trip.listing] += 1 if trips_taken[trip.listing]
            trips_taken[trip.listing] = 1 if !trips_taken[trip.listing]
        end
        trips_taken
    end
end