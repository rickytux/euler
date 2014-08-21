require 'prime'

def find_next_prime(num)
  num +=1
  until num.prime?
    num +=1
  end
  return num
end

def sum_primes_below(num)
	test = 2
	primes = []
	while test < num
		primes << test
		test = find_next_prime(test)
	end
	p primes.inject(:+)
end

sum_primes_below(2000000)