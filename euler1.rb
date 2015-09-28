print Array(1..x).find_all { |item| item%3 == 0 || item%5 == 0 }.inject(:+)
