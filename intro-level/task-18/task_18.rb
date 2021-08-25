# The first try works, but I'm getting a performance error
=begin
def palindromeRearranging(inputString)
    array = inputString.split('')
	possibilities = array.permutation(inputString.length).to_a

    possibilities.each { |word| word == word.reverse ? (return true) : next }
    false
end
=end

# So I had to change the idea. A palindrome only aceppts 1 char quantity odd.
# If two differents characters repeat a value odd of times, the string isn't palindrome.
def palindromeRearranging(inputString)
    array = inputString.split('')
    uniques = array.uniq

    repetions = []
    uniques.each { |el| repetions.push << array.count(el) }

    count = 0
    repetions.each { |val| val.odd? ? (count += 1) : next }

    count > 1 ? false : true
end
