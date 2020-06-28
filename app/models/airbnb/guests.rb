class Guests
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

    def trips
        Trips.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        trips.count
    end

    def listings
        trips.all.map do |trip|
            trip.listing
        end
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end.uniq
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end

end