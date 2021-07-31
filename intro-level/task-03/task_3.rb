# Primeira resolução
=begin 
def checkPalindrome(inputString)
    reverseString = ""
    i=1
    
    while i<=inputString.length do
        reverseString += inputString[inputString.length - i]
        i +=1
    end
    
    reverseString == inputString ? true : false
end 
=end

# Resolução após estudos
def checkPalindrome(inputString)
    inputString == inputString.reverse ? true : false
end