require 'test/unit' # 절대경로로 require
require_relative 'calculator' # 상대경로로 require하겠다.(직접 만든 메소드들에 주로 사용)

class Calculator < Test::Unit::TestCase
    def setup
        @calc = Calculator.new('test')
    end
    
    def test_calculator
        assert_equal(@calc.add(2,5), 7)
        assert_equal(@calc.add(5,2), 3)
    end
end