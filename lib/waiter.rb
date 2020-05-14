class Waiter
    attr_accessor :name,:yrs_experience
    @@all = []

    def initialize (name,yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        Waiter.all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total,tip)
        Meal.new(customer, self,total,tip)
    end

    def  meals
        Meal.all.select {|meal| meal.waiter == self}
    end
    
    def best_tipper
        self.meals.max{|meal1,meal2| meal1.tip <=> meal2.tip}.customer
    end
end