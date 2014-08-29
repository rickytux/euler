def sum_of_squares(num)
	(1..100).inject(0) {|sum,num| sum += num**2}
end

def sums_squared(num)
	((1..100).inject(0) {|sum,num| sum += num })**2
end

def diff(num)
	puts sums_squared(num) - sum_of_squares(num)
end

diff(100)


