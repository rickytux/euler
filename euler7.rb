require 'prime'

def find_prime(num)
	x = 1
	test = 2
	until x == num
		test=find_next_prime(test)
		x += 1
	end
	print test
end

def find_next_prime(num)
	num +=1 
	until num.prime?
		num+=1
	end
	return num
end

find_prime(10001)