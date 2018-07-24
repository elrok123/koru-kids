require "./lib/Checkout"
require "./lib/Item"

describe "Checkout" do
    describe ".new" do
        context "when we create a new instance with rules" do
            it "should return a checkout instance" do
                # Create some item rules to be used
                rules = [
                    Item.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
                    Item.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
                    Item.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
                    Item.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
                ]    

                expect(Checkout.new(rules)).not_to eq(nil)
            end
        end
    end
    describe "#scan" do
        context "when given a new item" do
            it "should update the total price" do
            end
        end
    end
end

describe "Run Checkout Sample 1" do
    it "runs the checkout process" do
        rules = [
            Item.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
            Item.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
            Item.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
            Item.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
        ]

        co = Checkout.new(rules)
        item = Item.new(name: "A") 
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)

        price = total
    end
end
