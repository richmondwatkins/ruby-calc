require_relative '../lib/year'

RSpec.describe Year do
  context ".leap?" do
    it "should return true for 2012" do
      Year.new(2012).leap?.should == true
    end
    it "should return true for 1800" do
      Year.new(1800).leap?.should == false
    end
    it "should return true for 1900" do
      Year.new(1900).leap?.should == false
    end
    it "should return false for 2013" do
      Year.new(2013).leap?.should == false
    end
    it "should return true for 2000" do
      Year.new(2000).leap?.should == true
    end
  end
end
