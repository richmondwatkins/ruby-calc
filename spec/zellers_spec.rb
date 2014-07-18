require_relative '../lib/zellers'

RSpec.describe Zellers do
  context ".calculate" do
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(2, 2014)

      z.should == 0
    end
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(11, 2010)

      z.should == 2
    end
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(1, 2024)

      z.should == 2
    end
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(9, 2024)

      z.should == 1
    end
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(1, 1800)

      z.should == 4
    end
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(10, 3000)

      z.should == 4
    end
  end

end
