require_relative '../lib/month'

RSpec.describe Month do
  # context ".header" do
  #   it "matches cal for December 2012" do
  #     month = Month.new(12, 2012)
  #     month.header.should == "   December 2012"
  #   end
  #   it "matches cal for July 1901" do
  #     month = Month.new(07, 1901)
  #     month.header.should == "     July 1901"
  #   end
  # end
  context ".header" do
    it "should print the header of the cal" do
      month = Month.new(4, 2012)

      month.header.should == "     April 2012"
    end
  end

  context ".name" do
    it "translates January" do
      Month.new(1, 2012).name.should == "January"
    end
    it "translates February" do
      Month.new(2, 2012).name.should == "February"
    end
    it "translates March" do
      Month.new(3, 2012).name.should == "March"
    end
    it "translates April" do
      Month.new(4, 2012).name.should == "April"
    end
    it "translates May" do
      Month.new(5, 2012).name.should == "May"
    end
    it "translates June" do
      Month.new(6, 2012).name.should == "June"
    end
    it "translates July" do
      Month.new(7, 2012).name.should == "July"
    end
    it "translates August" do
      Month.new(8, 2012).name.should == "August"
    end
    it "translates September" do
      Month.new(9, 2012).name.should == "September"
    end
    it "translates October" do
      Month.new(10, 2012).name.should == "October"
    end
    it "translates November" do
      Month.new(11, 2012).name.should == "November"
    end
    it "translates December" do
      Month.new(12, 2012).name.should == "December"
    end
  end

  context ".leap_year" do
    it "should determine if it is a leap year or not and return an array of month lengths" do
      month = Month.new(4, 2008)
      month.leap_year.should == [nil,31,29,31,30,31,30,31,31,30,31,30,31]
    end
    it "should determine if it is a leap year or not and return an array of month lengths" do
      month = Month.new(4, 2012)
      month.leap_year.should == [nil,31,29,31,30,31,30,31,31,30,31,30,31]
    end
    it "should determine if it is a leap year or not and return an array of month lengths" do
      month = Month.new(4, 2011)
      month.leap_year.should == [nil,31,28,31,30,31,30,31,31,30,31,30,31]
    end
  end

  # context "month_array" do
  #   it "should create an array with all the days of the month" do
  #     month = Month.new(1, 2009)
  #     month.month_array.should == " 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
  #   end
  #   it "should create an array with all the days of the month" do
  #     month = Month.new(2, 2008)
  #     month.month_array.should == " 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29"
  #   end
  #   it "should create an array with all the days of the month" do
  #     month = Month.new(2, 2007)
  #     month.month_array.should == " 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28"
  #   end
  # end
  #
  # context "print_cal_body" do
  #   it "should print the first line of the calendar" do
  #     month = Month.new(1, 2024)
  #     month.print_cal_body.should == "     1  2  3  4  5  6\n  7  8  9 10 11 12 13\n 14 15 16 17 18 19 20\n 21 22 23 24 25 26 27\n 28 29 30 31"
  #   end
  # end

  context "print_a_single_month" do
    it "should print an entire month" do
      month = Month.new(7, 2017)
      expected = <<EOS
     July 2017
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
      month.month_array.should == expected
    end

  it "should print an entire month" do
    month = Month.new(12, 2013)
    expected = <<EOS
   December 2013
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    month.month_array.should == expected
  end
end

end #end of tests
