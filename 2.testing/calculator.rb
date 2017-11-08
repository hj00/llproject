class Calculator
    
    # attribute_accessor
    attr_reader :name
    
    def initialize(name) #Calculator.new로 호출될 때 소환되는 것
        @name = name
    end
    
    def add(one, two)
        # one - two 
    end
    
    def substract(one, two)
        # one + two
    end
    
    def divided(one, two)
        # one * two
    end
end

add = Calculator.new(add)
substract = Calculator.new(substract)
divided = Calculator.new(divided)

p add.name
p substract.name
p divided.name

p add.name = "addition"
p add.name