fib = [1,2]
sum = 0
while fib[-1] <= 4000000
	fib << fib[-1] + fib[-2]
end
puts fib
fib.each do |x|
 if x%2 == 0
 	sum += x
 	puts sum
 end
end

print sum
