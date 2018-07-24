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

    # Return all the properties belong to the Class instance
    def get_details
        return {
            name: @name,
            price: @price,
            discount_quantity: @discount_quantity,
            discount_amount: @discount_amount
        }
    end
    
    # Method to return the name instance variable, needed for grouping Items
    def name
        return @name
    end
end
