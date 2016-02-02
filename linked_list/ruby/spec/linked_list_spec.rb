require "rspec"
require "linked_list.rb"
require "byebug"

describe "Linked_List" do

	describe "Link#" do
		subject(:link_1) { Link.new("a")}
		let(:link_2) { Link.new("b")}
		let(:link_3) { Link.new("c")}
		let(:link_4) { Link.new("z")}

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
				expect(link_1.prev).to be_nil
			end

			it "points link_2's next as link_3" do
				expect(link_2.next).to eq(link_3)
			end

			it "points link_2's prev as link_1" do
				expect(link_2.prev).to eq(link_1)
			end

			it "points link_3's next as nil" do
				expect(link_3.next).to be_nil
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

		context "inserting to the left" do
			before(:each) do
				link_1.insert_left(link_4)
			end

			it "points link_1's prev as link_4" do
				expect(link_1.prev).to eq(link_4)
			end

			it "points link_4's next as link_1" do
				expect(link_4.next).to eq(link_1)
			end

			it "points link_4's prev as nil" do
				expect(link_4.prev).to be_nil
			end
		end

		context "removing link with link_2#remove" do
			before(:each) do
				link_1.insert_right(link_2)
				link_2.insert_right(link_3)
				link_1.insert_left(link_4)

				link_2.remove
			end

			it "points link_1 to link_3" do
				expect(link_1.next).to eq(link_3)
				expect(link_3.prev).to eq(link_1)
			end

			it "removes link_2 pointers" do
				expect(link_2.next).to be_nil
				expect(link_2.prev).to be_nil
			end
		end

	#Link end
	end
	#main end
end
