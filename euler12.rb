require 'pry'
require 'pry-nav'

def divisors(num)
	actual_divisors = []
	possible_divisor = num
	while possible_divisor > 0
		if num % possible_divisor == 0
			actual_divisors << possible_divisor
		end
		possible_divisor -= 1
	end
	if actual_divisors.length >= 500
		return true
	else
		return false
	end
end

def find_triangles
	next_triangle = 0
	triangles = [1,3]
	difference = 3
	until divisors(triangles[-1])
		# binding.pry
		next_triangle = triangles[-1] + difference
		triangles << next_triangle
		difference +=1
		puts triangles[-1]
	end
	p triangles[-1]
end

find_triangles