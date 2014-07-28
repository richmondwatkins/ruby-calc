require_relative 'zellers'
require_relative 'year'

class Month
  MONTHS = [nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November","December"]

  def initialize(month, year)
    @month = month
    @year = year
  end

  def header(switch=false)
    switch ? "#{name}".center(20) : "#{name} #{@year}".center(20)
  end

  
  def name
    MONTHS[@month]
  end

  def days
    y = Year.new(@year)
    days = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    return 29 if y.leap? && @month == 2
    days[@month]
  end

  def to_s(header_switch=false)
    output = header(header_switch)
    output << "\nSu Mo Tu We Th Fr Sa\n"
    first = (Zellers.calculate(@month, @year) + 6) % 7
    num_days = days
    translated_days = []

    num_days.times {|i| translated_days << i+1 }
    first.times { translated_days.unshift "  "}
    remainder = 42 - translated_days.size
    remainder.times { translated_days << "  "}

    6.times do |i|
      7.times do |j|
        index = (i*7) + j
        if translated_days[index].class == Fixnum && translated_days[index] < 10
          output << " "
        end
        output << translated_days[index].to_s
        output << " "
        output << "\n" if j==6
      end
    end
    output
  end
end#end of Class
