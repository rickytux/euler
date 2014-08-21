def collatz(num)
	sequence = [num]

	while num != 1
		if num.even?
			num = num/2
		else
			num = 3*num +1
		end
		sequence << num
	end
	return sequence.length
end

def longest
	x = 1
	max_start = 0
	max_sequence = 0
	while x < 1000000
		test = collatz(x)
		if test > max_sequence
			max_start = x
			max_sequence = test
		end
		x += 1
	end
	puts "The longest sequence starts with #{max_start} and is #{max_sequence}"
end

longest