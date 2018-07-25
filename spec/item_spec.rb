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
    end
end

