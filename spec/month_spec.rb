require_relative '../lib/month'
RSpec.describe Month do
  context ".header" do
    it "matches cal for December 2012" do
      month = Month.new(12,2012)
      month.header.should == "December 2012".center(20)
    end
    it "matches cal for July 1901" do
      month = Month.new(7,1901)
      month.header.should == "July 1901".center(20)
    end
    it "matches cal for December 2012" do
      month = Month.new(12,2012)
      month.header(true).should == "December".center(20)
    end
  end

  context ".name" do
    it "translates January" do
      Month.new(1,2012).name.should == "January"
    end
    it "translates February" do
      Month.new(2,2012).name.should == "February"
    end
    it "translates March" do
      Month.new(3,2012).name.should == "March"
    end
    it "translates April" do
      Month.new(4,2012).name.should == "April"
    end
    it "translates May" do
      Month.new(5,2012).name.should == "May"
    end
    it "translates June" do
      Month.new(6,2012).name.should == "June"
    end
    it "translates July" do
      Month.new(7,2012).name.should == "July"
    end
    it "translates August" do
      Month.new(8,2012).name.should == "August"
    end
    it "translates September" do
      Month.new(9,2012).name.should == "September"
    end
    it "translates October" do
      Month.new(10,2012).name.should == "October"
    end
    it "translates November" do
      Month.new(11,2012).name.should == "November"
    end
    it "translates December" do
      Month.new(12,2012).name.should == "December"
    end
  end

  context ".days" do
    it "returns 31 for January" do
      Month.new(1, 2014).days.should == 31
    end
    it "returns 28 for February" do
      Month.new(2, 2014).days.should == 28
    end
    it "returns 31 for March" do
      Month.new(3, 2014).days.should == 31
    end
    it "returns 30 for April" do
      Month.new(4, 2014).days.should == 30
    end
    it "returns 31 for May" do
      Month.new(5, 2014).days.should == 31
    end
    it "returns 30 for June" do
      Month.new(6, 2014).days.should == 30
    end
    it "returns 31 for July" do
      Month.new(7, 2014).days.should == 31
    end
    it "returns 31 for August" do
      Month.new(8, 2014).days.should == 31
    end
    it "returns 30 for September" do
      Month.new(9, 2014).days.should == 30
    end
    it "returns 31 for October" do
      Month.new(10, 2014).days.should == 31
    end
    it "returns 30 for November" do
      Month.new(11, 2014).days.should == 30
    end
    it "returns 31 for December" do
      Month.new(12, 2014).days.should == 31
    end
    it "returns 29 for February in a leap year" do
      Month.new(2, 2000).days.should == 29
    end
  end
end
