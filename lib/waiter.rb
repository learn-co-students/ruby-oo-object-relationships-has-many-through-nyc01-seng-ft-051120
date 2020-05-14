require 'pry'

class Waiter
    attr_accessor :name, :years
        @@all = []

    def initialize(name, years)
        @name = name
        @years = years
        save
    end

    def self.all 
        @@all
    end

    def save
        Waiter.all << self
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meals|
            meals.waiter == self
        end
    end

    def customers
        meals.map do |meal_info|
            meal_info.customer
        end
    end

    def best_tipper
        max_meal = meals.max do |meal1, meal2|
            meal1.tip <=> meal2.tip
            end
        max_meal.customer
    end

    def self.tips_most_experienced
        most_exp_waiter = self.all.max do |waiter1, waiter2|
            waiter1.years <=> waiter2.years
        end
        tips_total = most_exp_waiter.meals.reduce(0) do |sum, meals|
            sum + meals.tip
        end
        tips_total / most_exp_waiter.meals.length
    end

    def self.tips_least_experienced
        least_exp_waiter = self.all.min do |waiter1, waiter2|
            waiter1.years <=> waiter2.years
        end
        tips_total = least_exp_waiter.meals.reduce(0) do |sum, meals|
            sum + meals.tip
        end
        tips_total / least_exp_waiter.meals.length

    end

    


end