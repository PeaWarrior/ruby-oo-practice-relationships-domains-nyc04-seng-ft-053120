class Trips
    attr_reader :listing, :guest
    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end