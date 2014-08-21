require 'prime'
require 'pry'
require 'pry-nav'

def find_next_prime(num)
  num +=1
  unless num.prime?
    num +=1
  end
  return num
end

def prime_factors(num)
  test = num
  factorals = []
  factor = 2
  until test.prime?
    # binding.pry
    if test % factor == 0
      test = test / factor
      factorals << factor
    end
    factor = find_next_prime(factor)
  end
  factorals << test

  biggest = factorals[0]
  factorals.each do |x|
    if x > biggest
      biggest = x
    end
  end
  puts "The largest prime factor of #{num} is #{biggest}"
end



prime_factors(600851475143)
