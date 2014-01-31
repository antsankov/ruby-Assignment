class Class # worked off of github http://stackoverflow.com/questions/11604149/initializing-attr-accessor-like-method-with-history
  def attr_accessor_with_history(attr_name) #creates the accessor 
    attr_name = attr_name.to_s #turns it into a string
    attr_reader attr_name #sets up a reader
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

class Example
  attr_accessor_with_history :foo
  attr_accessor_with_history :bar
end

a = Example.new; a.foo = 2; a.foo = "test"; 
p a.foo_history # => [nil, 2, "test"]

a = Example.new
p a.foo_history # => [nil]