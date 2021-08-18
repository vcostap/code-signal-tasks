# Todas soluções funcionam, mas
# apenas a última passou no teste
# de desempenho do codesignal

=begin
def areSimilar(a, b)
    return true if a.eql?(b)
    permutations = a.permutation.to_a 
    
    similar = []
    permutations.each { |array| array.eql?(b) ? (similar = array; break) : next }
    
    return false if similar.length == 0

	changes = 0
    a.each.with_index { |el, idx| el == similar[idx] ? next : (changes += 1) }

	changes <= 2
end

def areSimilar(a, b)
    return true if a.eql?(b)
    permutations = a.permutation
    return false if !permutations.include?(b)
    
	changes = 0
    a.each.with_index { |el, idx| el != b[idx] ? (changes += 1) : next }
	changes <= 2
end

def areSimilar(a, b)
    return true if a.eql?(b)
    a.permutation do |array|
        if array.eql?(b)
            changes = 0
            a.each.with_index { |el, idx| el != b[idx] ? (changes += 1) : next }
            return changes <= 2
        end
    end
    false
end

def areSimilar(a, b)
    return true if a.eql?(b)
    a.each { |el| b.include?(el) ? next : (return false) }
    
	changes = 0
    a.each.with_index { |el, idx| el != b[idx] ? (changes += 1) : next }
	changes <= 2
end
=end

def areSimilar(a, b)
    return true if a.eql?(b)
    
    i = 0
    while i < a.length do
        if a[i] == b[i]
            a.delete_at(i)
            b.delete_at(i)
		else 
			i += 1
        end
    end

    return false if a.length != 2
	
    a == b.reverse
end
