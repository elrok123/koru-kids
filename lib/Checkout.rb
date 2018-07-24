# Class for running a checkout process
class Checkout
    @item_rules = []
    @current_items = []
    @total_price = 0

    # Sets up the base class instance
    def initialize(rules: [])
       @item_rules = rules 

    end

    # Updates the total after adding a new item
    def update_total

    end
    
    # Scans an item into the system
    def scan(item)
        @current_items << item    
        self.update_total
    end
    
    # Returns the checkout total minus item discounts
    def total
       return @total_price 
    end
end
