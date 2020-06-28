class Project
    attr_reader :title, :user, :goal
    @@all = []

    def initialize(title, user, goal)
        @title = title
        @user = user
        @goal = goal
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.project == self
        end
    end

    def self.no_pledges
        self.all.select do |project|
            project.pledges == []
        end
    end

    def total_raised
        self.pledges.sum do |pledge|
            pledge.amount
        end
    end

    def self.above_goal
        self.all.select do |project|
            project.total_raised >= project.goal
        end
    end

    def self.most_backers
        self.all.sort_by do |project|
            project.pledges.count
        end.last
    end
end