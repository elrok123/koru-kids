require "./lib/Item"

class Rule < Item 

    attr_accessor :name, :price, :discount_quantity, :discount_amount

    def initialize(name: "", price: 0, discount_quantity: 0, discount_amount: 0)
        if !name.to_s.empty?
            self.name = name
        else
            raise ArgumentError, 'Invalid rule name passed...'
        end
        self.price = price
        self.discount_quantity = discount_quantity
        self.discount_amount = discount_amount
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
