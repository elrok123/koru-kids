require "./spec/spec_helper"
require "./lib/Item"

describe Item do
    describe ".new" do
        context "when given valid item parameters" do
            it "should return a new item" do
                item = Item.new(name: "A", price: 30, discount_quantity: 3, discount_amount: 15)

                expect(item.get_details[:name]).to eq("A")
                expect(item.get_details[:price]).to eq(30)
                expect(item.get_details[:discount_quantity]).to eq(3)
                expect(item.get_details[:discount_amount]).to eq(15)
            end
        end
    end
end

