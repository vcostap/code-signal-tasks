# Primeira resolução
=begin
def adjacentElementsProduct(inputArray)
    largest = inputArray[0]*inputArray[1]
    i = 0
    
    while i < inputArray.length do
      if !inputArray[i+1].nil?
        aux = inputArray[i]*inputArray[i+1].to_int
        largest = aux >= largest ? aux : largest
        i += 1
      else 
        return largest
      end
    end 
    
end
=end

# Resolução após estudos
def adjacentElementsProduct(inputArray)
    largest = inputArray[0]*inputArray[1]
    
    inputArray.map.with_index do |element, index| 
        if !inputArray[index+1].nil?
            largest = element*inputArray[index+1] > largest ? element*inputArray[index+1] : largest
        end
    end

	largest
end
