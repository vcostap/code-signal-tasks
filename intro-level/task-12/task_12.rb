def sortByHeight(a)
    heights = []
    indexs = []
    result = []

    a.each.with_index { |e, idx| e != -1 ? heights.push(e) : indexs.push(idx) }
	
    heights = heights.sort.reverse

    (0...a.length).each { |i| indexs.include?(i) ? result.push(-1) : result.push(heights.pop) }

    result
end