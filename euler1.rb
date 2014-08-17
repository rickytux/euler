x =1
multiples = []
until x >=1000
	if x%3==0 || x %5 == 0
		multiples << x
	end
	x+=1
end

sum = multiples.inject(:+)
print multiples
print sum
