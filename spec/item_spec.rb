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
                item = Item.new(name: "")

                expect(item.name).to eq(nil)
            end
        end
    end
end

