# Class to store Item information and discounts
class Item
    @name = ""
    @price = 0
    @discount_quantity = 0
    @discount_amount = 0

    def initialize(name, price, discount_quantity=0, discount_amount=0)
        # Set up our base class variables
        @name = name
        @price = price
        @discount_quantity = discount_quantity
        @discount_amount = discount_amount
    end
end
