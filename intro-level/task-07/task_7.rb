# Primeira resolução
=begin
def almostIncreasingSequence(sequence)
    i = 0
    sequence_a = sequence.dup
    sequence_b = sequence.dup
    
    while  i < sequence.length  do
      if sequence[i+1] and sequence[i] >= sequence[i+1]
        sequence_a.delete_at(i)
        sequence_b.delete_at(i+1)
        break
      end
      i += 1
    end
  
    i = 0
    result_a = nil
    while  i < sequence_a.length  do
      if sequence_a[i+1] and sequence_a[i] >= sequence_a[i+1]
        result_a = false
        break
      else
        result_a = true
      end
      i += 1
    end
    
    i = 0
    result_b = nil
    while  i < sequence_b.length  do
      if sequence_b[i+1] and sequence_b[i] >= sequence_b[i+1]
        result_b = false
        break
      else
        result_b = true
      end
      i += 1
    end
  
    return (result_a or result_b)
end
=end

# Resolução após estudos
def almostIncreasingSequence(sequence)
    sequence_a = sequence.dup
    sequence_b = sequence.dup

    sequence.each.with_index  do |el, idx|
        if sequence[idx+1] and el >= sequence[idx+1]
        sequence_a.delete_at(idx)
        sequence_b.delete_at(idx+1)
        break
        end
    end

    result_a = nil
    sequence_a.each.with_index do |el, idx|
        if sequence_a[idx+1] and el >= sequence_a[idx+1]
        result_a = false
        break
        else
        result_a = true
        end
    end

    result_b = nil
    sequence_b.each.with_index do |el, idx| 
        if sequence_b[idx+1] and el >= sequence_b[idx+1]
        result_b = false
        break
        else
        result_b = true
        end
    end

    result_a or result_b
end