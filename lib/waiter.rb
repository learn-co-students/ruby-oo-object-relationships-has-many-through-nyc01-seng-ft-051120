class Waiter
    @@all=[]
attr_accessor :meal
def initialize(name, year_of_experience)
    @name=name
    @year_of_experience=year_of_experience
    @@all<<self
end
def self.all
    @@all
end

def new_meal(customer, total, tips)
    Meal.new(self, customer, total, tips)
end
def meals
    Meal.all.select do |meal|
        meal.waiter==self
    end
end
def best_tipper
    min=0
    best=nil
    Meal.all.each do |meal|
        if meal.waiter==self && meal.tips>min
            min=meal.tips   
    end
end
Meal.all.each do |meal|
if meal.tips==min
best=meal.customer
end
            

end
best
end
end