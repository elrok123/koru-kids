# Class for running a checkout process
class Checkout
    # Sets up the base class instance
    def initialize(rules)
        @item_rules = rules
        @current_items = []
        @total_price = 0
        @current_items = [] 
    end

    # Used to get the price of a group of items
    def calculate_group_total(item_group)
        # We need to store a new total, so lets store it in a new var total_price
        grouped_items_total_price = 0

        # Here we iterate 
        item_group.each do |item|
             grouped_items_total_price = grouped_items_total_price + item.price 
        end

        # Return the price of the grouped items
        return grouped_items_total_price
    end

    # Updates the total after adding a new item
    def update_total
        # Group our items by their name
        grouped_items = items.group_by {|item| item.name }
        
        # Iterate over each item group and pass each group to calculate_group_by 
        grouped_items.each_key do |item_group|
           self.calculate_group_total item_group 
        end unless items.count == 0 # Ensure that we don't iterate over an empty array

        # Sum all group item prices
        new_total = group_prices.sum

        # Update total price
        @total_price = new_total 
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
