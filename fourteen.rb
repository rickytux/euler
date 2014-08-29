



def collatz(num)
	sequence = [num]
	while num != 1
		if num%2 == 0
			num = num / 2
			sequence << num
		else
			num = 3* num +1
			sequence << num
		end
	end
	sequence.length
end
largest = 0
length = 0
x = 1
while x <= 1000000
	test = collatz(x)
	if test > length
		length = test
		largest = x
	end
	x+= 1
end
puts largest