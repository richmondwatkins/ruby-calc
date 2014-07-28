require_relative '../lib/zellers'

RSpec.describe Zellers do
  context ".calculate" do
    it "returns 0 for 7,2017" do
      0.should == Zellers.calculate(7,2017)
    end
    it "returns 1 for 4,2012" do
      1.should == Zellers.calculate(4,2012)
    end
    it "returns 4 for 1, 2555" do
      4.should == Zellers.calculate(1,2555)
    end
  end
end
