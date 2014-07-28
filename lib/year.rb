require_relative 'month'

class Year
  def initialize(year)
    @year = year
  end

  def leap?
    bool = false
    if @year % 4 == 0
      bool = true
      if @year % 100 == 0
        bool = false unless (@year % 400 == 0)
      end
    end
    bool
  end

  def to_s
    months = []
    12.times do |i|
      months << Month.new(i+1, @year)
    end
    months = months.map {|m| m.to_s(true)}
    output = @year.to_s.center(62) + "\n\n"
    output << stitch(months)
    output
  end

  def stitch(months)
    months = months.map {|m| m.split("\n")}
    new_lines = []
    4.times do |row|
      8.times do |col|
        index = 3*row
        new_lines << months[index][col] + " "
        if col < 2
          new_lines << " "
        end
        new_lines << months[index+1][col] + " "
        if col < 2
          new_lines << " "
        end
        new_lines << months[index+2][col]
        new_lines << "\n"
      end
    end
    output = ""
    new_lines.each { |line| output << line}
    output
  end
end
