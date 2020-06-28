class Bakery
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

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def desserts_count
        desserts.count
    end

    def total_calories
        desserts.map do |dessert|
            dessert.calories
        end
        .inject do |total, calories|
            total + calories
        end
    end

    def average_calories
        total_calories/desserts_count
    end

    def get_ingredients
        desserts.map do |dessert|
            dessert.ingredients
        end
    end

    def shopping_list
        get_ingredients.flatten.uniq.each do |ingredient|
            puts ingredient.name
        end
    end

end