require 'pry'

class Customer
  attr_accessor :meal, :waiter
  @@all=[]
  def initialize(name, age)
    @age=age
    @name=name
    @@all<<self
    @waiter=waiter

  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tips)
    Meal.new(waiter,self,total, tips)
  end

  def meals
    Meal.all.select do |meal|
        meal.customer==self
    end
    end

    def waiters 
        mean=[]
       Meal.all.each do |meal|
            if meal.customer==self
              mean << meal.waiter
            end  
        end
        mean
    end

end
