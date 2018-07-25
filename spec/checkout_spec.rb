require "./lib/Checkout"
require "./lib/Rule"
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
    context "runs the checkout process adding items A, B, C and D as checkout rules" do
        it "runs the checkout process, adding Items A, B and C to the checkout order" do
            rules = [
                Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
                Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
                Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
                Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
            ]

            co = Checkout.new(rules)
            item = Item.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15) 
            co.scan(item)
            item = Item.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5)
            co.scan(item)

            price = total
        end
    end
end
