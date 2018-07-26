require "./spec/spec_helper"
require "./lib/Item"

describe Item do
    describe ".new" do
        context "when given valid item parameters" do
            it "should return a new item" do
                item = Item.new(name: "A")

                expect(item.name).to eq("A")
            end
        end
        context "when given invalid item parameters" do
            it "should return nil" do
                expect { Item.new(name: nil) }.to raise_error(ArgumentError)
                expect { Item.new(name: "") }.to raise_error(ArgumentError)
            end
        end
    end
end

