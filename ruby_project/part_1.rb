# Part1: Hello World
class HelloWorldClass #this defines a new class
    def initialize(name) #this sets up a class constru
       @name = name.capitalize #takes whatever our names is and capitalizes first letter
    end #end of consturcttor
    def sayHi #function within
        puts "Hello #{@name}!" #Prints out the name variable #{@name}, not the litteral. 
    end #end of function
end

hello = HelloWorldClass.new("aLEX") #this makes an object, hello
hello.sayHi #this calls the sayHi function in hello
