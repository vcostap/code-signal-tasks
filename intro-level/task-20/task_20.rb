def arrayMaximalAdjacentDifference(inputArray)
    maximalAdjacentDifference = 0
    (1...inputArray.length).each do |idx|
        if inputArray[idx] >= 0
            maximalAdjacentDifference = (inputArray[idx] - inputArray[idx-1]).abs if (inputArray[idx] - inputArray[idx-1]).abs > maximalAdjacentDifference
        else
            maximalAdjacentDifference = (inputArray[idx].abs + inputArray[idx-1]).abs if (inputArray[idx].abs + inputArray[idx-1]).abs > maximalAdjacentDifference
        end
    end
    maximalAdjacentDifference
end



