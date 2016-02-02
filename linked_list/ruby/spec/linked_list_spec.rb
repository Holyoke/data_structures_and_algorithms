require "rspec"
require "linked_list.rb"
require "byebug"

describe "Linked_List" do

	describe "Link" do
		subject(:link_1) { Link.new("a")}
		let(:link_2) { Link.new("b")}
		context "inserting a link to the right" do

			it "shows link2 next" do
				link_1.insert_right(link_2)

				expect(link_1.next).to eq(link_2)
			end

			it "shows nil previously"
		end
	end
end
