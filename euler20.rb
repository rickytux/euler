class Integer
	def digits
		Enumerator.new do |x|
			to_s.chars.map{|c| x << c.to_i}
		end
	end
end


def factorials(num)
	numbers = []
	while num >= 1
		numbers << num
		num -= 1
	end
	sum = numbers.inject(:*)
	split_sum = sum.digits.to_a
	p split_sum.inject(:+)
end

factorials(100)
