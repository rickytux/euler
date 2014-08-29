def factorial(num)
	factorial = 1
	until num == 1 
		factorial *= num
		num -= 1
	end
	factorial
end

p factorial(100).to_s.split("").inject(0) {|sum,num| sum += num.to_i}