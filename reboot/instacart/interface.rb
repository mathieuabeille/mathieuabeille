
require_relative 'data'
# Pseudo-code
# 1. Print Welcome
puts "-------------------------------"
puts "Welcome to the e-bordel"
puts "-------------------------------"
# 2. Define your store (with a bunch of food items)
puts "What we have in store :"

services.each do |x, y|
  p "#{x} : #{y[:price]}$ (#{y[:quantity]} items)"
end

  # 2. Get items from the user (shopping step)
puts "-------------------------------"

bill = 0
order = 0
basket = []
quantity_array =[]

until order == "q"
  p "what would you like? (type q to checkout)"
  order = gets.chomp
  if services.has_key?(order)
    basket << order
    p "how many of these?"
    quantity = gets.chomp.to_i
      while quantity > services[order][:quantity]
      p "plus de stock, prend moins."
      quantity = gets.chomp.to_i
      end
    quantity_array << quantity
    bill = bill + services[order] [:price] * quantity
  end
end

# basket ["Loana", "Zlata"]
# quantity array[1,2]


# 3. Print the bill (cashier step)
puts "-------------------------------"
puts basket
puts "TOTAL : #{bill}$"
puts "-------------------------------"

