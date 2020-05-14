class Meal
    @@all=[]
attr_accessor :meal, :customer, :waiter, :tips
def initialize(waiter, customer, total, tips)
@waiter=waiter
@customer=customer
@total=total
@tips=tips
@@all<<self
end
def self.all
    @@all
end
end