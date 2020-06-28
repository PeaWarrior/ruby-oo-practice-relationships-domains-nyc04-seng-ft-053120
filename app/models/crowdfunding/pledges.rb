class Pledge
    attr_reader :project, :user, :amount
    @@all = []

    def initialize(project, user, amount)
        @project = project
        @user = user
        @amount = amount
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end
end