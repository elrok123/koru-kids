# Class for running a checkout process
class Checkout
    attr_accessor :total_price

    # Sets up the base class instance
    def initialize(rules)
        @item_rules = rules
        @current_items = []
        self.total_price = 0
        @current_items = [] 
    end

    def get_item_rule(item)
        # Get the price of the item by selecting the checkout rule that matches the name of the item
        return @item_rules.select{|item_rule| item_rule.name == item.name }[0]
    end

    def calculate_discount(grouped_items)
        # Create our base discount variable
        discount = 0  

        # Use the first item in the group to get the rule to apply
        item_rule = self.get_item_rule grouped_items[0]

        # Calculate the discount to apply from the item rule discount amount and quantity with the number of items in the group
        discount_amount = (grouped_items.count / item_rule.discount_quantity) * item_rule.discount_amount

        # Return the discount to be applied
        return discount_amount
    end

    # Used to get the price of a group of items
    def calculate_group_total(item_group)
        # We need to store a new total, so lets store it in a new var total_price
        grouped_items_total_price = 0

        # Here we iterate over our group of items
        item_group.each do |item|
            # Get the item price from our saved rules
            item_price = self.get_item_rule(item).price

            # Add the item price to the total
            grouped_items_total_price = grouped_items_total_price + item_price
        end

        # Here we apply our discount to the grouped_items_total_price (if applicable)
        grouped_items_total_price = grouped_items_total_price - self.calculate_discount(item_group)

        # Return the price of the grouped items
        return grouped_items_total_price
    end

    # Updates the total after adding a new item
    def update_total
        # Group our items by their name
        grouped_items = @current_items.group_by {|item| item.name }

        # Create a variable that we can use to store all of our total prices for each group of items
        grouped_prices = []
        
        # Iterate over each item group and pass each group to calculate_group_by, then store each group total price in grouped_totals 
        grouped_items.each_key do |item_group|
            # Calculate our group total and store 
            group_total = self.calculate_group_total(grouped_items[item_group]) 

            # Add to our grouped item prices array
            grouped_prices << group_total 
        end unless @current_items.count == 0 # Ensure that we don't iterate over an empty array

        # Sum all group item prices
        new_total = grouped_prices.sum

        # Update total price
        @total_price = new_total 
    end
    
    # Scans items into the system
    def scan(items)
        items = Array(items)

        items.each do |item|
            # Add the item to the checkout's current_items instance var
            @current_items << item    

            # We then update the total of the checkout to keep everything up to date
            self.update_total
        end
    end
    
    # Returns the checkout total minus item discounts
    def total
       return @total_price 
    end
end
