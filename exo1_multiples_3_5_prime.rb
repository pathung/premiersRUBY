max = 1000

def multiple(max)
	i = 0
	array = []
	for i in 1..max
		if i%3 == 0 || i%5 == 0
			array << i
		end
	end
return (array)
end


def sum (array)
	sum = 0
	array.each { |x| sum += x}
	return(sum)
end

puts sum(multiple(max))

