def old_roman_numerals(num)
    numstring = num.to_s
	numarray1 = numstring.split(//)
    numarray = Array.new

	ones = numarray1[-1].to_i
	tens = numarray1[-2].to_i
	hundreds = numarray1[-3].to_i
	thousands = numarray1[-4].to_i

	#Ones Place	
		for number in 1..(ones%5) 
			numarray.push("I")
		end
        if ones >= 5
        	numarray.push("V")
        end

	#Tens Place
		for number in 1..(tens%5)
			numarray.push("X")
		end
		if tens >= 5
        	numarray.push("L")
        end
	#Hundreds Place
		for number in 1..(hundreds%5)
		numarray.push("C")
		end
		if hundreds >= 5
			numarray.push("D")
		end

	#Thousands Place
		for number in 1..(thousands)
			numarray.push("M")
		end

print numarray.reverse
end

old_roman_numerals(55)