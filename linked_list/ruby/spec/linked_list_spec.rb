require "linked_list"

describe "Linked_List" do
	subject(:linked_list) {LinkedList.new}
	let(:link_1) { Link.new("a")}
	let(:link_2) { Link.new("b")}
	let(:link_3) { Link.new("c")}
	let(:value_1) {"d"}
	let(:value_2) {"d"}

	it "pushes links into the list" do
		linked_list.push(link_1)
		linked_list.push(link_2)
		linked_list.push(link_3)

		expect(linked_list[0]).to eq(link_1)
		expect(linked_list[1]).to eq(link_2)
		expect(linked_list[2]).to eq(link_3)
	end

	it "pushes values into the list"

	it "raises an error on out of bounds"

	it "pops links fromm the list"

	it "pops values from the list"

	it "unshifts links into the list"

	it "unshifts values into the list"

	it "shifts links out of the list "

	it "shifts values out of the list "

end
