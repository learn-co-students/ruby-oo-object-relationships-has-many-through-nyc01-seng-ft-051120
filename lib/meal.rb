require 'pry'
require_relative './customer.rb'
require_relative './waiter.rb'

class Meal

   attr_reader :waiter, :customer, :total, :tip

   @@all = []

   def initialize(waiter, customer, total, tip)
      @waiter = waiter
      @customer = customer
      @total = total
      @tip = tip
      @@all << self
   end

   def self.all
      @@all
   end

end


chase = Customer.new("Chase", 36)
carley = Customer.new("Carley", 24)

sam = Waiter.new("Sam", 10)
mark = Waiter.new("Mark", 5)

meal1 = Meal.new(sam, chase, 200, 5000)
meal2 = Meal.new(sam, carley, 100, 60000)
meal3 = Meal.new(mark, chase, 500, 10)
meal4 = Meal.new(mark, carley, 50, 60)

