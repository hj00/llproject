require 'rspec'
require_relative '../calculator' #require할 때는 .rb는 빼고

describe Calculator do # calculator class를 지금부터 테스트 하겠다.
    before { @calculator = Calculator.new('test') } # 테스트 전에 클래스 객체를 하나 만든다.
    
    it "should add 2 numbers correctly" do # test의 목적을 써준다.
        expect(@calculator.add(2,2)).to eq 4
    end
    
    it "should subtract 2 numbers correctly" do
        expect(@calculator.subtract(5,3)).to eq 2
    end
end
