class Item 
    attr_accessor :name

    def initialize(name: "")
        if !name.to_s.empty?
            # Set up our base class variables
            self.name = name
        else
           raise ArgumentError, 'Invalid item name passed...' 
        end
    end
end
