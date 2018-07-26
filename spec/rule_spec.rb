require "./spec/spec_helper"
require "./lib/Item"

describe Rule do
    describe ".new" do
        context "when given valid item parameters" do
            it "should return a new item" do
                rule = Rule.new(name: "A", price: 25, discount_quantity: 2, discount_amount: 20)

                expect(rule).not_to eq(nil)
                expect(rule.name).to eq("A")
                expect(rule.price).to eq(25)
                expect(rule.send(:discount_quantity)).to eq(2)
                expect(rule.send(:discount_amount)).to eq(20)
            end
        end
        context "when given invalid item parameters" do
            it "should return nil" do
                expect { Rule.new(name: "") }.to raise_error(ArgumentError)
                expect { Rule.new(name: nil) }.to raise_error(ArgumentError)
            end
        end
    end
end

