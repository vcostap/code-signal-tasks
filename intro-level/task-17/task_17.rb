def arrayChange(inputArray)
	original = []
    count = 0
    
    inputArray.each { |el| original.push(el) }

    (1...inputArray.length).each do |el|
        if inputArray[el] <= inputArray[el-1]
            inputArray[el] = inputArray[el-1] + 1
        end
    end
    
    inputArray.each.with_index { |el, idx| count += el - original[idx] }
    count
end