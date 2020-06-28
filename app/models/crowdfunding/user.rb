class User
    attr_reader :user
    @@all = []
    
    def initialize(user)
        @user = user
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def pledge(project, amount)
        Pledge.new(project, self, amount)
    end

    def new_project(title, goal)
        Project.new(title, self, goal)
    end

    def pledges
        Pledge.all.select do |pledge|
            pledge.user == self
        end
    end

    def self.highest_pledge
        Pledge.all.sort do |pledge|
            pledge.amount
        end.last
    end

    def self.multi_pledger
        self.all.select do |user|
            user.pledges.count > 1
        end
    end

    def projects
        Project.all.select do |project|
            project.user == self
        end
    end

    def self.project_creator
        self.all.select do |user|
            user.projects.count >= 1
        end
    end
    
end