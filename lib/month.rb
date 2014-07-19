class Month
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
    month_array = []
    (total_days +1).times do |i|
      if i < 10
        var = " #{i}"
        month_array.push(var)
      else
        var = "#{i}"
        month_array.push(var)
      end
    end
     month_array.shift
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



  def print_first_line
    # first_day = Zellers.calculate(@month, @year)
    #
    # first_day_index = [18, 0, 3, 6, 9, 12, 15]
    #
    # space_nums = first_day_index[first_day.to_i]
    #
    # space_nums.times do
    #   month_array.push(2324)
    # end

    str_array = month_array.collect{|i| i.to_s}
    string = str_array.join(" ")

    first_day = Zellers.calculate(@month, @year)

    first_day.times do
      string.insert 0, "  "
    end

    string = string.scan(/.{21}|.+/)

    string = string.join("\n")
    string
  end


  def month_to_s
    output = header
    output << "\nSu Mo Tu We Th Fr Sa\n"
    output << <<EOS
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    output
  end
end
