class Numeric

 @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019} #sets up our aray of currencies

 def method_missing(method_id) #search for method, if it doesn't have it go up the chain, doesn't find it, and comes back and finds method missing
   singular_currency = method_id.to_s.gsub( /s$/, '') #if there is an 's' at the end take it out 
   if @@currencies.has_key?(singular_currency) #check if we have the currency 
     self * @@currencies[singular_currency] # This multiplys the self by the multiplier, creates a method on the fly
   else
     super #just return the super
   end
 end

def in(currency)
	singular_currency = currency.to_s.gsub( /s$/, '')
	self / @@currencies[singular_currency] #this reverses the program 
end

end
# if you add a new mo
p 5.euros.in(:dollars)                
p 0.25.dollars.in(:euro)              
p 1.dollar.in(:euros).in(:dollar)    