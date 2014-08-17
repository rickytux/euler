require 'Prime'
require 'pry-nav'

def find_next_prime(num)
  unless num.prime?
    num +=1
  end
  return num
end

def prime_factors(num)
  binding.pry
  factorals = []
  factor = 2
  while num.prime?
    if num % factor == 0
      num = num / factor
      factorals << factor
      puts factorals
    end
    factor = find_next_prime(factor)
  end
  puts factorals
end



prime_factors(13195)
prime_factors(82)