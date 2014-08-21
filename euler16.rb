class Integer
	def digits
		Enumerator.new do |x|
			to_s.chars.map{|c| x << c.to_i}
		end
	end
end


num = 2**1000
num_array = num.digits.to_a
puts num_array.inject(:+)