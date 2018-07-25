class Rule 
    attr_accessor :name

    def initialize(name: "", price: 0, discount_quantity: 0, discount_amount: 0)
        # Set up our base class variables
        self.name = name
        @price = price
        @discount_quantity = discount_quantity
        @discount_amount = discount_amount
    end

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
