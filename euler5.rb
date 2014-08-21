def countup(num)
	test = 1
	until checker(test, num)
		test += 1
	end
	puts "The first number evenly divisible by 1 to #{num} is #{test}"
end


def checker(num, top)
	x =1
	until x == top + 1 
		if num % x != 0
			return false
		end
		x+=1
	end
	return true
end
countup(15)
