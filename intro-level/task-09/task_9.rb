# Primeira resolução
=begin
def allLongestStrings(inputArray)
    i = 0
	biggest = 0
    while i < inputArray.length do
        if inputArray[i].length > biggest
			biggest = inputArray[i].length
		end
		i += 1
    end

	i = 0
	output = []
	while i < inputArray.length do
        if inputArray[i].length == biggest
			output.push(inputArray[i])
		end
		i += 1
    end

	return output
end
=end

# Resolução após estudos
def allLongestStrings(inputArray)
    output = []
	biggest = 0
	
    inputArray.each { |el| biggest = el.length > biggest ? el.length : biggest }
    inputArray.each { |el| el.length == biggest ? output.push(el) : next }

    output
end
