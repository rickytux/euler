# def factorial(num)
# 	factorial = 1
# 	until num == 1 
# 		factorial *= num
# 		num -= 1
# 	end
# 	factorial
# end


def curious_num(num)
	factorial = [1,1,2,6,24,120,720,5040,40320,362880]
	num.to_s.split("").inject(0) {|sum,num| sum += factorial[num.to_i]} == num 
end

x =3
curious =[] 
while x < 50000
	if curious_num(x)
		curious << x
	end
	x +=1
end
p curious.inject(:+)
