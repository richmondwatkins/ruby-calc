RSpec.describe "Cal's full month integration" do
  it "should correctly print July 2017" do
    expected = Month.new(7,2017).to_s
    actual = `./cal 07 2017`
    actual.should == expected
  end

  it "should correctly print December 2013" do
    expected = Month.new(02,2013).to_s
    actual = `./cal 2 2013`
    actual.should == expected
  end
end
