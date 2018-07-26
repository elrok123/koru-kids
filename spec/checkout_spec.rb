require "./lib/Checkout"
require "./lib/Rule"
require "./lib/Item"

describe "Checkout" do
    describe ".new" do
        context "when we create a new instance with rules" do
            it "should return a checkout instance" do
                # Create some item rules to be used
                rules = [
                    Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
                    Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
                    Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
                    Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
                ]    

                expect(Checkout.new(rules)).not_to eq(nil)
            end
        end
    end
    describe "#scan" do
        context "when given a new item" do
            it "should update the total price" do
                rules = [
                    Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
                    Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
                    Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
                    Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
                ]

                co = Checkout.new(rules)
                
                expect(co.total_price).to eq(0)
                
                item = Item.new(name: "B")
                co.scan(item)

                expect(co.total_price).to eq(20)

                co.scan(item)

                expect(co.total_price).to eq(35)
            end
        end
    end
end

describe "Run Checkout Sample 1" do
    it "runs the checkout process, adding Items A, B and C to the checkout order" do
        rules = [
            Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
            Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
            Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
            Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
        ]

        co = Checkout.new(rules)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "B")
        co.scan(item)
        item = Item.new(name: "C")
        co.scan(item)
        total = co.total_price

        price = total
        
        expect(price).to eq(100)
        
    end
end

describe "Run Checkout Sample 2" do
    it "runs the checkout process, adding Items A, B and C to the checkout order" do
        rules = [
            Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
            Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
            Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
            Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
        ]

        co = Checkout.new(rules)
        item = Item.new(name: "B")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "B")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        total = co.total_price

        price = total
        
        expect(price).to eq(110)

    end
end

describe "Run Checkout Sample 3" do
    it "runs the checkout process, adding Items A, B and C to the checkout order" do
        rules = [
            Rule.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15),
            Rule.new(name: "B", price: 20, discount_quantity: 2, discount_amount: 5),
            Rule.new(name: "C", price: 50, discount_quantity: 0, discount_amount: 0),
            Rule.new(name: "D", price: 15, discount_quantity: 0, discount_amount: 0)
        ]

        co = Checkout.new(rules)
        co = Checkout.new(rules)
        item = Item.new(name: "C")
        co.scan(item)
        item = Item.new(name: "B")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "D")
        co.scan(item)
        item = Item.new(name: "A")
        co.scan(item)
        item = Item.new(name: "B")
        co.scan(item)
        total = co.total_price

        price = total
        
        expect(price).to eq(155)

    end
end
