require 'date'

p start = DateTime.now
x =1000000000
match = false
until match == true 
	test = (x**2).to_s
	if test =~ /[1]\d[2]\d[3]\d[4]\d[5]\d[6]\d[7]\d[8]\d[9]/
		match = true
	else
		x+=1
	end
end
p finish = DateTime.now
p x 
p x **2 
p finish - start