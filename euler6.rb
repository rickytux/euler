def difference(num)
	x = 1
	squares = 0
	sumsquares = 0
	until x == num +1 
		squares += x**2
		sumsquares += x
		x+=1

	end
	diff = sumsquares**2 - squares
	puts "The difference is #{diff}"
end
difference(100)


