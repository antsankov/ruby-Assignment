class CartesianProduct

	attr_accessor:set1
	attr_accessor:set2

	def initialize(set1,set2)
		@set1 = set1
		@set2 = set2

	end 

	def cart_prob()

		 self.set1.each { |x| self.set2.each{|y| p y*x}}

	end
end

test = CartesianProduct.new([1,2,3,10],[4,2,1])

test.cart_prob()