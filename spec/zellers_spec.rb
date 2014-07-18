require_relative '../lib/zellers'

RSpec.describe Zellers do
  context ".calculate" do
    it "finds the day of the week when given month and year" do
      z = Zellers.calculate(2, 2014)

      z.should == 0
    end
  end

end
