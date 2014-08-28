fib = [1,2]
while fib[-1].to_s.length <= 1000
	fib << fib[-1] + fib[-2]
end

index = fib.length - 1
puts index

