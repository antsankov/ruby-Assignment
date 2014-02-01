#REMEBER FOR INTERVIEW: YOU CAN OPEN ANY METHOD OR CLASS DURING RUN TIME 

class Class # worked off of stack http://stackoverflow.com/questions/11604149/initializing-attr-accessor-like-method-with-history
  def attr_accessor_with_history(attr_name) #creates the accessor 
    attr_name = attr_name.to_s #turns it into a string
    attr_reader attr_name #sets up a reader
    #what this basically does is it inputs the following code as literal ascii characters into the Class starting from the eval function
    class_eval %Q{  
      def #{attr_name}_history
        @#{attr_name}_history || [nil] # give default value if not assigned
      end

      def #{attr_name}=(new_value)
        @#{attr_name}_history ||= [nil] # shortcut, compare to your line
        @#{attr_name}_history << @#{attr_name} = new_value
      end
    }
  end
end

class Tester
  attr_accessor_with_history :foo #sets up the acesseor with history
  attr_accessor_with_history :bar
end

a = Tester.new
a.foo = 100
a.foo = "I work"
p a.foo_history # => returns nil, 2, "test"

a = Tester.new
p a.foo_history # => just returns nil 