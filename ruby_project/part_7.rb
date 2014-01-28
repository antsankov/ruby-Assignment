class Dessert

 	attr_accessor:name #these are inherited to jellybean 
    attr_accessor:calories

    def initialize(name, calories)
	
		@name = name 
		@calories = calories

    end



    def healthy?

    	return (self.calories < 200)

    end

    def delicious?

    	return true #always true, because always 

    end
end

class JellyBean < Dessert
	attr_accessor:flavor
	
    def initialize(name, calories, flavor)

    	@name = name
    	@calories = calories
    	@flavor = flavor
        
    end


    def delicious?
    	if (self.flavor == "black licorice")
     		return false #first checks if its licor 
    	else return super.delicious? # if it isnt then we check the parent if its delcious or not
    	end
        # Your code here

    end

end

test = Dessert.new("pip",500)
shit = JellyBean.new("james",7, "black licorice")
test.healthy?

puts shit.delicious?