require "rspec"
require "linked_list.rb"
require "byebug"

describe "Linked_List" do

	describe "Link#" do
		subject(:link_1) { Link.new("a")}
		let(:link_2) { Link.new("b")}
		let(:link_3) { Link.new("c")}

		it "prints the value" do
			expect(link_1.to_s).to eq("a -> nil")
		end

		context "inserting a link to the right" do
			before(:each) do
				link_1.insert_right(link_2)
				link_2.insert_right(link_3)
			end

			it "points next as link2" do
				expect(link_1.next).to eq(link_2)
			end

			it "points nil previously" do
				expect(link_1.prev).to eq(nil)
			end

			it "points link_2's next as link_3" do
				expect(link_2.next).to eq(link_3)
			end

			it "points link_2's prev as link_1" do
				expect(link_2.prev).to eq(link_1)
			end

			it "points link_3's next as nil" do
				expect(link_3.next).to eq(nil)
			end

			it "points link_3's prev as link_2" do
				expect(link_3.prev).to eq(link_2)
			end

			context "printing pointers" do
				it "prints link_1" do
					expect(link_1.to_s).to eq("a -> b")
				end

				it "prints link_2" do
					expect(link_2.to_s).to eq("b -> c")
				end

				it "prints link_3" do
					expect(link_3.to_s).to eq("c -> nil")
				end
			end

		end

	end
end
