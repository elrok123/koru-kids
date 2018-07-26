require "./lib/Item"
require "./lib/Rule"
require "./lib/Checkout"

rules = [
	Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
	Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
	Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
	Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
	Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
]

2.times { puts }
puts "*******************"
puts "New Checkout Order:"
puts "+++++++++++++++++++"
# Test Sample 1: A, B, C
co = Checkout.new(rules)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "B")
co.scan(item)
item = Item.new(name: "C")
co.scan(item)
co.print_item_list
puts "____________________"
puts "The total price is: "
print co.total_price.to_s + "\n"

2.times { puts }
puts "*******************"
puts "New Checkout Order:"
puts "+++++++++++++++++++"
# Test Sample 2: B, A, B, A, A
co = Checkout.new(rules)
item = Item.new(name: "B")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "B")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
co.print_item_list
puts "____________________"
puts "The total price is: "
print co.total_price.to_s + "\n"


2.times { puts }
puts "*******************"
puts "New Checkout Order:"
puts "+++++++++++++++++++"
# Test Sample 3: C, B, A, A, D, A, B
co = Checkout.new(rules)
item = Item.new(name: "C")
co.scan(item)
item = Item.new(name: "B")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "D")
co.scan(item)
item = Item.new(name: "A")
co.scan(item)
item = Item.new(name: "B")
co.scan(item)
co.print_item_list
puts "____________________"
puts "The total price is: "
print co.total_price.to_s + "\n"
