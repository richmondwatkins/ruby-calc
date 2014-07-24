require_relative "zellers"

class Month
  include Enumerable

  MONTHS = [nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def initialize(month, year)
    @month = month
    @year = year
  end

  def header
    "#{name} #{@year}".center(20).rstrip
  end

  def month_array
    total_days = leap_year[@month]
    month_arry = []
    total_days.times do |i|
      month_arry.push(i+1)
    end

    month_arry = month_arry.map do |day|
      if day < 10
        day = " #{day}"
      else
        day = "#{day}"
      end
    end

    first_day = Zellers.calculate(@month, @year)

    days_of_week = [1, 7, 6, 5, 4, 3, 2]
    first_week = []

    until month_arry.length == 42 do
      month_arry.push("  ")
    end

    days_of_week[first_day].times do |day|
      day = " #{day+1}"
      first_week.push(day)
    end

    month_arry = month_arry - first_week

    until first_week.length == 7 do
      first_week.unshift("  ")
    end

    month_arry = month_arry.collect{|j| j.to_s}
    month_arry = month_arry.each_slice(7).to_a
    month_arry = month_arry.unshift(first_week)

    week_1 = month_arry[0]
    week_2 = month_arry[1]
    week_3 = month_arry[2]
    week_4 = month_arry[3]
    week_5 = month_arry[4]
    week_6 = month_arry[5]


    month_arry = "#{week_1.join(" ")}\n#{week_2.join(" ")}\n#{week_3.join(" ")}\n#{week_4.join(" ")}\n#{week_5.join(" ")}\n#{week_6.join(" ")}\n".rstrip
    month_arry = "#{month_arry}\n"


    output = ""
    output << header
    output << "\nSu Mo Tu We Th Fr Sa\n"
    output << month_arry
    output
  end

  def test
    "test"
    month_array
  end

  def name
    MONTHS[@month]

  end

  def leap_year
    if @year%4 == 0 && @year%100 != 0
       [nil,31,29,31,30,31,30,31,31,30,31,30,31]
    else
      [nil, 31,28,31,30,31,30,31,31,30,31,30,31]
    end
  end


end
