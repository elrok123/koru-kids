class Item
    @name = ""
    @price = 0
    @discount_quantity = 0
    @discount_amount = 0

    def initialize(name: "", price: 0, discount_quantity: 0, discount_amount: 0)
        # Set up our base class variables
        @name = name
        @price = price
        @discount_quantity = discount_quantity
        @discount_amount = discount_amount
    end

    # Method to return the name instance variable, needed for grouping Items
    def self.name
        return @name
    end
    # Method to return the price instance variable
    def self.price
        return @price
    end
    # Method to return the discount_quantity instance variable
    def self.
        return @price
    end
    # Method to return the discount_amount instance variable
    def self.price
        return @price
    end
end
