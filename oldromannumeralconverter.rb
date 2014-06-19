def old_roman_numerals(num)
    numstring = num.to_s
	numarray1 = numstring.split(//)
    numarray = Array.new

	ones = numarray1[-1].to_i
	tens = numarray1[-2].to_i
	hundreds = numarray1[-3].to_i
	thousands = numarray1[-4].to_i

	#Ones Place

	if ones >= 5
		for number in 1..(ones%5) 
			numarray.push("I")
		end
        numarray.push("V")
	else
		for number in 1..ones 
			numarray.push("I")
		end
	end

	#Tens Place

	if tens < 5
		for number in 1..tens
			numarray.push("X")
		end

	else
		for number in 1..(tens%5)
			numarray.push("X")
		end
        numarray.push("L")
	end

	#Hundreds Place

	if hundreds < 5
		for number in 1..hundreds
		numarray.push("C")
		end

	else

		for number in 1..(hundreds%5)
			numarray.push("C")
		end
        numarray.push("D")
	end

	#Thousands Place

	for number in 1..thousands
		numarray.push("M")
	end
numarray.reverse.join
end
