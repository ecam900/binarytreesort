class BinaryTree
	attr_accessor :payload, :left, :right

	def initialize(payload, left=nil, right=nil)
		@payload = payload
		@left = left
		@right = right
	end

end

class BTreesort

	def initialize
		@btreesort = []
	end

	def self.sort(array)
		tree_representation = build_tree(array)

		return flatten_tree(tree_representation)
	end

	def flatten_tree(tree)
		# build new array by flattening the tree
		# do DFS algorigth, but modify it such that you deal with the:
		# - left hand side
		# - the node itself
		# - then the right hand side
	end

	def build_tree(array)
		first = array[0]
		tree  = BinaryTree.new(first)
		rest  = array.last(array.length - 1)

		#begin
			# 1. Loop through the rest array, for each element:
			#    2.a) For each element find the location that each element should go in the tree.
			#  	      to do that, keep looking through the children until you get to point where
			# 			  if you were to insert the element, you'd be replacing a 'nil' child.
			#    2.b) Put it at the location where it belongs, therefore modifying the tree itself.
 			#         Build a binary tree containing the current element, two nil children and put it
 			#         into the tree itself.
		#end
	
	end



end

#array = [7, 4, 9, 1, 6, 14, 10]