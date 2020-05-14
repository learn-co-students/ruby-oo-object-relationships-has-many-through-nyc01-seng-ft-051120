require 'pry'
##or require_relative
require_relative './customer.rb'
require_relative './meal.rb'
require_relative './waiter.rb'

sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)
jeff = Customer.new("Jeff", 36)
rachel = Customer.new("Rachel", 1)
dan = Waiter.new("Dan", 3)
jason = Waiter.new("Jason",4)
jeff.new_meal(jason, 50, 3)
rachel.new_meal(jason, 40, 10)
sam.new_meal(jason, 45, 8)


sam_pat = sam.new_meal(pat, 50, 10)
sam_alex = sam.new_meal(alex, 20, 3)
pat_sam = pat.new_meal(sam, 30, 5)
pat_rachel = pat.new_meal(rachel, 159, 60)

rachel.new_meal(dan, 50, 10)
alex.new_meal(dan, 30, 5)


