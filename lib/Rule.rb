require "./lib/Item"

class Rule < Item 
    attr_accessor :price

    def initialize(name: "", price: 0, discount_quantity: 0, discount_amount: 0)
        self.name = name
        self.price = price
        @discount_quantity = discount_quantity
        @discount_amount = discount_amount
    end

    # Method for getting the rule price
    def self.price
        return @price
    end

    # Method to return the discount_quantity instance variable
    def self.discount_quantity
        return @discount_quantity
    end

    # Method to return the discount_amount instance variable
    def self.discount_amount
        return @discount_amount
    end
end
