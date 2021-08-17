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