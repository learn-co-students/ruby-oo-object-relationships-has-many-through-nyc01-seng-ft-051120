require 'pry'

class Waiter

   attr_reader :name
   @@all = []

   def initialize(name, years_of_experience)
      @name = name
      @years_of_experience = years_of_experience
      @@all << self
   end

   def self.all
      @@all
   end

   def new_meal(customer, total, tip)
      Meal.new(self, customer, total, tip)
   end

   def meals
      Meal.all.select { |meal| meal.waiter == self }
   end

   # def best_tipper
   #    Meal.all.inject({tip:0}) { |note, meal| meal.tip >= note.values[0] ? {meal.customer => meal.tip} : note}.first[0]
   # end

   def best_tipper
      best_meal_tip = meals.max do |meal1, meal2|
         meal1.tip <=> meal2.tip
      end
      best_meal_tip.customer
   end


end