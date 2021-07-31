# Primeira resolução
=begin
def makeArrayConsecutive2(statues)
    min = statues[0]
    max = statues[0]
    i = 1
    
    while i < statues.length do
        if statues[i] < min
            min = statues[i]
        elsif statues[i] > max
            max = statues[i]
        end            
        i += 1
    end
    
    return (max - min) - statues.length + 1
end
=end

# Resolução após estudos
def makeArrayConsecutive2(statues)
    statues.max - statues.min - statues.length + 1
end