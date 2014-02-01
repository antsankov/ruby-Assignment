class CartesianProduct

	attr_accessor:set1
	attr_accessor:set2
	attr_accessor:final_set

	def initialize(set1,set2,final_set)
		@set1 = set1
		@set2 = set2
		@final_set = final_set
	end 

	final_set= []

	def cart_prob()
		
		self.set1.each { |x| self.set2.each{|y|  final_set << [x,y]}} #this does two for loops and puts it in litterally
		print final_set
	end
end

test = CartesianProduct.new([:b,:d,:b,3],[4,2,1],[])

test.cart_prob()