fib_numbers = [1,1]

while fib_numbers[-1].to_s.length < 1000
	fib_numbers << fib_numbers[-2] + fib_numbers[-1]
end
puts fib_numbers.length



