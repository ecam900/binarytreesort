require 'spec_helper'
require 'binarytreesort'
require 'node'

describe BTreesort, type: :model do
	describe "::initialize" do
		context "when no arguments are provided" do
			it "returns an error" do
				expect {BTreesort.new }.to raise_error(ArgumentError)
			end
		end

		context "when only payload is provided" do
			it "should have @left and @right be nil" do
				tree = BTreesort.new(20)
				expect(tree.left).to be_nil
			end
		end
	end

	describe "#sort" do
		context "when given an array with unsorted numbers" do
			it "return an array with sorted numbers" do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BTreesort.sort(array)).to eq expected
			end
		end
	end
end





# RSpec.describe BTreesort, type: :model do
#   describe 'btree sort should work' do
#     it 'should order the array' do
#       expected = [1, 4, 6, 7, 9, 10, 14]
#       array = [7, 4, 9, 1, 6, 14, 10]
#       expect(BTreeSort.sort(array)).to eq expected
#     end
#   end
# end