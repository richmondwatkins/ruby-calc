class Zellers
  def self.calculate(month, year)
    if month < 3
      month += 12
      year -= 1
    end

    q = 1
    k = year % 100
    j = year / 100
    (q + ((13*(month+1))/5) + k + (k/4).floor + (j/4).floor + (5*j)) % 7
  end
end
