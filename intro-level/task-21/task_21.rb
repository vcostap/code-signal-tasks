def isIPv4Address(inputString)
    return false if inputString.split(".").length != 4
    inputString.split(".").each do |number|
        return false if number.length == 0 or number.length > 3 

        if number.to_i >= 0 and number.to_i < 256
            if number.to_i >= 0 and number.to_i < 10 and number.length != 1
                return false 
            elsif number.to_i >= 10 and number.to_i < 100 and number.length != 2
                return false 
            end 
        else
            return false
        end
    end
	true
end