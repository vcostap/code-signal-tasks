# Primeira resolução
=begin
def matrixElementsSum(matrix)
    i = 0
    k = 0
    j = 0
	sum = 0
    while i < matrix.length do
        while j < matrix[i].length do
            while k <  matrix.length do
                if matrix[k][j] != 0
					sum += matrix[k][j]
				else
					break
				end
                k += 1
            end
            k = 0
            j += 1
        end
        i += 1
    end
	return sum
end

# Resolução após estudos
def matrixElementsSum(matrix)
	sum = 0

    matrix.each do |el|
        el.each.with_index do |elem, idx|
            matrix.each.with_index do |element, index|
				if element[idx] != 0 
					sum += element[idx]
				else
					break
				end
            end
        end
		break
    end
	
    sum
end
=end

#Resolução após estudos
def matrixElementsSum(matrix)
	sum = 0
	matrix.transpose.each { |el| el.each { |room| room != 0 ? sum += room : break } }
	sum
end
